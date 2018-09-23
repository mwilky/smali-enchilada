.class public abstract Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;
.source "DefaultBasePicker.java"


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

.field protected mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;-><init>()V

    invoke-virtual {p0}, Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;->mType:Ljava/lang/String;

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;->mLogic:Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    iget-object v0, p0, Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;->mLogic:Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    iget-object v1, p0, Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getAppInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;->mAppInfoList:Ljava/util/List;

    iget-object v0, p0, Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;->mLogic:Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    iget-object v1, p0, Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;->mType:Ljava/lang/String;

    iget-object v2, p0, Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;->mAppInfoList:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getAppPackageNameList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;->mAppNameInfoList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected getCandidates()Ljava/util/List;
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

    invoke-virtual {p0}, Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;->mAppNameInfoList:Ljava/util/List;

    iget-object v3, p0, Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;->mAppNameInfoList:Ljava/util/List;

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

    iget-object v7, p0, Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget-object v8, p0, Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    aget-object v9, v2, v5

    iget v10, p0, Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;->mUserId:I

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

.method protected getDefaultKey()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;->mLogic:Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    iget-object v1, p0, Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getPmDefaultAppPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;->mType:Ljava/lang/String;

    invoke-static {v0}, Lcom/oneplus/settings/defaultapp/DefaultAppUtils;->getKeyTypeInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v1, 0x7f160078

    goto :goto_0

    :pswitch_1
    const v1, 0x7f160079

    goto :goto_0

    :pswitch_2
    const v1, 0x7f160077

    goto :goto_0

    :pswitch_3
    const v1, 0x7f160076

    nop

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract getType()Ljava/lang/String;
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 6

    iget-object v0, p0, Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;->mLogic:Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    iget-object v1, p0, Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getDefaultAppPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;->mLogic:Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    iget-object v2, p0, Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getPmDefaultAppPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "BaseDefaultPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "persistString packageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", local defaultAppPackageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",pmDefaultAppPkg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;->mLogic:Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    iget-object v3, p0, Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;->mType:Ljava/lang/String;

    iget-object v4, p0, Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;->mAppInfoList:Ljava/util/List;

    iget-object v5, p0, Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;->mAppNameInfoList:Ljava/util/List;

    invoke-virtual {v2, v3, v4, v5, p1}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->setDefaultAppPosition(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method
