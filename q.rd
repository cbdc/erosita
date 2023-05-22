<resource schema="erosita">
  <meta name="title">eROSITA AGN spectral catalogue </meta>
  <meta name="creationDate">2022-04-08T01:02:03</meta>
  <meta name="description">
      The eROSITA Final Equatorial-Depth Survey (eFEDS): The AGN Catalogue and its X-ray Spectral Properties.
  </meta>
  <meta name="creator.name">Liu et al.</meta>

  <meta name="subject">Catalogs</meta>
  <meta name="subject">X-ray sources</meta>

  <meta name="coverage">
    <meta name="profile">AllSky ICRS</meta>
    <meta name="waveband">X-ray</meta>
  </meta>

  <meta name="source">
    2021, arXiv:2106.14522
  </meta>

  <table id="main" onDisk="True" mixin="//scs#q3cindex" primary="ID_SRC">
    <index columns="RA_CORR,DEC_CORR"/>

    <column name="ID_SRC" type="integer"
        ucd="meta.id;meta.main"
        tablehead="ID" verbLevel="1"
        description="ID"
        required="True"/>

    <column name="Name" type="text"
       ucd="meta.id.cross;meta.main"
       tablehead="Source Name" verbLevel="1"
       description="Designation"
       required="True"/>

    <column name="RA_CORR" type="double precision"
      unit="deg" ucd="pos.eq.ra;meta.main"
      tablehead="ra" verbLevel="1"
      description="Right ascension (J2000) of the object"
      required="True"/>

    <column name="DEC_CORR" type="double precision"
      unit="deg" ucd="pos.eq.dec;meta.main"
      tablehead="dec" verbLevel="1"
      description="Declination (J2000) of the object"
      required="True"/>

    <column name="RADEC_ERR_CORR" type="double precision"
      unit="arcsec" ucd="pos.eq.ra"
      tablehead="position error" verbLevel="1"
      description="Position error"
      required="True"/>

    <column name="FluxCorr_Med_s" type="real"
      unit="erg sec-1 cm-2" ucd="phot.flux.density;em.X-ray"
      tablehead="Flux 0.5-2" verbLevel="1"
      description="Flux"
      required="True"/>

    <column name="FluxCorr_Lo1_s" type="real"
      unit="erg sec-1 cm-2" ucd="stat.error;phot.flux.density;em.X-ray"
      tablehead="Flux_lo 0.5-2" verbLevel="1"
      description="Flux lower limit at 0.5-2 keV"
      required="True"/>

    <column name="FluxCorr_Up1_s" type="real"
      unit="erg sec-1 cm-2" ucd="stat.error;phot.flux.density;em.X-ray"
      tablehead="Flux_up 0.5-2" verbLevel="1"
      description="Flux upper limit at 0.5-2 keV"
      required="True"/>

    <column name="FluxCorr_Med_t" type="real"
      unit="erg sec-1 cm-2" ucd="phot.flux.density;em.X-ray"
      tablehead="Flux 2.3-5" verbLevel="1"
      description="Flux"
      required="True"/>

    <column name="FluxCorr_Lo1_t" type="real"
      unit="erg sec-1 cm-2" ucd="stat.error;phot.flux.density;em.X-ray"
      tablehead="Flux_lo 2.3-5" verbLevel="1"
      description="Flux lower limit at 2.3-5 keV"
      required="True"/>

    <column name="FluxCorr_Up1_t" type="real"
      unit="erg sec-1 cm-2" ucd="stat.error;phot.flux.density;em.X-ray"
      tablehead="Flux_up 2.3-5" verbLevel="1"
      description="Flux upper limit at 2.3-5 keV"
      required="True"/>

  </table>

  <data id="import">
    <sources>eRoSITAagn.fits</sources>

    <fitsTableGrammar/>

    <make table="main">
      <rowmaker idmaps="*"/>
    </make>
  </data>

  <service id="cone" allowed="scs.xml,form">
    <meta name="title">eROSITA AGN catalog</meta>
    <meta name="shortName">eROSITAagn cone</meta>
    <meta name="testQuery">
      <meta name="ra">20.02637</meta>
      <meta name="dec">21.98903</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <dbCore queriedTable="main">
      <FEED source="//scs#coreDescs"/>
    </dbCore>

    <!--publish render="scs.xml" sets="ivo_managed"/-->
    <publish render="form" sets="local"/>
    <outputTable verbLevel="20"/>
  </service>

</resource>
