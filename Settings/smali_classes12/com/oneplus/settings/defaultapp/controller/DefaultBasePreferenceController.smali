.class public abstract Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;
.source "DefaultBasePreferenceController.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mAppInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mAppNameInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mLogic:Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

.field protected mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

.field protected mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;->mType:Ljava/lang/String;

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;->mLogic:Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    iget-object v0, p0, Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;->mLogic:Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    iget-object v1, p0, Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getAppInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;->mAppInfoList:Ljava/util/List;

    iget-object v0, p0, Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;->mLogic:Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    iget-object v1, p0, Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;->mType:Ljava/lang/String;

    iget-object v2, p0, Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;->mAppInfoList:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getAppPackageNameList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;->mAppNameInfoList:Ljava/util/List;

    new-instance v0, Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    return-void
.end method

.method private getCandidates()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/applications/DefaultAppInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;->mAppNameInfoList:Ljava/util/List;

    iget-object v3, p0, Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;->mAppNameInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    :try_start_0
    new-instance v6, Lcom/android/settingslib/applications/DefaultAppInfo;

    iget-object v7, p0, Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget-object v8, p0, Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    aget-object v9, v2, v5

    iget v10, p0, Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;->mUserId:I

    invoke-virtual {v8, v9, v4, v10}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    invoke-direct {v6, v1, v7, v8}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;Landroid/content/pm/PackageItemInfo;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getOnlyAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 6

    iget-object v0, p0, Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;->mLogic:Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    iget-object v1, p0, Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getDefaultAppPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lcom/android/settingslib/applications/DefaultAppInfo;

    iget-object v2, p0, Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget-object v4, p0, Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {v4}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;Landroid/content/pm/PackageItemInfo;)V

    invoke-virtual {v1}, Lcom/android/settingslib/applications/DefaultAppInfo;->loadIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    sget-object v2, Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOnlyAppIcon error . e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1
.end method

.method private getOnlyAppLabel()Ljava/lang/CharSequence;
    .locals 6

    iget-object v0, p0, Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;->mLogic:Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    iget-object v1, p0, Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getDefaultAppPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lcom/android/settingslib/applications/DefaultAppInfo;

    iget-object v2, p0, Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget-object v4, p0, Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {v4}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;Landroid/content/pm/PackageItemInfo;)V

    invoke-virtual {v1}, Lcom/android/settingslib/applications/DefaultAppInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    sget-object v2, Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOnlyAppLabel error . e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public getDefaultAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;->getDefaultAppInfo()Lcom/android/settingslib/applications/DefaultAppInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/settingslib/applications/DefaultAppInfo;->loadIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;->getOnlyAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method protected getDefaultAppInfo()Lcom/android/settingslib/applications/DefaultAppInfo;
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;->mLogic:Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    iget-object v1, p0, Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getPmDefaultAppPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/settingslib/applications/DefaultAppInfo;

    iget-object v2, p0, Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget-object v4, p0, Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {v4}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;Landroid/content/pm/PackageItemInfo;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public getDefaultAppLabel()Ljava/lang/CharSequence;
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;->getDefaultAppInfo()Lcom/android/settingslib/applications/DefaultAppInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/settingslib/applications/DefaultAppInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object v1

    nop

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    invoke-direct {p0}, Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;->getOnlyAppLabel()Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;->mType:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getType()Ljava/lang/String;
.end method

.method public isAvailable()Z
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;->getCandidates()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isDefault(Ljava/lang/String;I)Z
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;->mLogic:Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    iget-object v1, p0, Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getPmDefaultAppPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;->mLogic:Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    iget-object v2, p0, Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getDefaultAppPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;->getDefaultAppLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
