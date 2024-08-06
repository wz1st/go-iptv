.class public Lcom/tvbus/engine/bc;
.super Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/pm/PackageManager;-><init>()V

    return-void
.end method


# virtual methods
.method public addPackageToPreferred(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public addPermission(Landroid/content/pm/PermissionInfo;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public checkSignatures(II)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public clearPackagePreferredActivities(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getActivityLogo(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAllPermissionGroups(I)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getApplicationEnabledSetting(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getApplicationLogo(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getApplicationLogo(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getComponentEnabledSetting(Landroid/content/ComponentName;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getInstalledApplications(I)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getInstalledPackages(I)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNameForUid(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackageGids(Ljava/lang/String;)[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 4

    new-instance v0, Landroid/content/pm/PackageInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    new-instance v1, Landroid/content/pm/Signature;

    const-string v2, "30820303308201eba00302010202045644f7ac300d06092a864886f70d01010b050030323110300e06035504071307546861697065693110300e060355040a1307536f70506c7573310c300a06035504031303646576301e170d3137303533313039343531305a170d3432303532353039343531305a30323110300e06035504071307546861697065693110300e060355040a1307536f70506c7573310c300a0603550403130364657630820122300d06092a864886f70d01010105000382010f003082010a0282010100aaf5f00032542f7f789d3e884d7ad663c0dbefbdc1fc6e505d0940c670f55f72b90826cfcf643097f16767d18229f472172bc3c79310f65fb9c33f0901bcc359095079fa3ccc4117b977fd3e069675564f6536e8a2afb7ac5c0ae63119f624790661b3e6150d25e13e2f112b4f042895ca12839d1b42d1f3e808110a7eefd92bd4cb07b601b1e73853ee34677c5d04fc1551f28dbe1574476da90b6ae82210abfe04cf17fb40839addb94915632e4e3b80c8642ba6c5cfa5cb8a55022b701ce9a1db4680e37c881a9e5fc5d4fe2bb3edbb19e55049f3de896664a1a1547741257895adff86f78c2e2e26e256903a424900d5d599acbe2d5aa504d5c3f0b3bb590203010001a321301f301d0603551d0e041604143cedfc24897b8525bb21c8c45bc92be5f2e7475e300d06092a864886f70d01010b050003820101008611f32e55fe26804c5b609f3a7e027afecf7860affc035563ff7cfacd412d8ae920c7a4bb03d4f09ad2442b713f6fe15d2c9d35682e5403b30b4f86d71ede98fdda1460e7be462d67f89d6ec8aeafe38d0c071293d07ac0e7b8b9a1900fe7b9f6e1e80544a369289d71f1942cc15ef20a1287438f21fdac252a5abec34c549609e89b4f04bc80b7ca95dc86533ccd252244bba02f3b549fc7306a0b8b0ac1e4c1d557d0778eaf8e783ba3c5fdecc933ab66717abced4f2682eefddb7b7f2e4b04c0be94af9799749a22e14eb235b3d1fe024d5b1a8201454ab5e66ebe80c139a672c6493c4cb9331fafd1e9179a813bf76de0a5fd4502f6b5b140450c0d7cbc"

    invoke-direct {v1, v2}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    iput-object p1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    iput-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    return-object v0
.end method

.method public getPackagesForUid(I)[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPreferredPackages(I)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSystemSharedLibraryNames()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getXml(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/content/res/XmlResourceParser;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasSystemFeature(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSafeMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public queryContentProviders(Ljava/lang/String;II)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public removePackageFromPreferred(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public removePermission(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setApplicationEnabledSetting(Ljava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    .locals 0

    return-void
.end method

.method public setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public verifyPendingInstall(II)V
    .locals 0

    return-void
.end method
