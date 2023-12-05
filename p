/*--------------------------------*- C++ -*----------------------------------*\
  =========                 |
  \\      /  F ield         | OpenFOAM: The Open Source CFD Toolbox
   \\    /   O peration     | Website:  https://openfoam.org
    \\  /    A nd           | Version:  10
     \\/     M anipulation  |
\*---------------------------------------------------------------------------*/
FoamFile
{
    format      ascii;
    class       volScalarField;
    object      p;
}
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

dimensions      [0 2 -2 0 0 0 0];

internalField   uniform 0;

boundaryField
{

    FrontandBacke
    {
        type            empty;
    }
    top
    {
        type            zeroGradient;
     
    }
    outlet
    {
        type            fixedValue;
        value           uniform 0;

    }
    bottom
    {
        type            zeroGradient;

    }
    inlet
    {
        type            zeroGradient;
    }
    diamond
    {
        type            zeroGradient;
    }
}

// ************************************************************************* //
