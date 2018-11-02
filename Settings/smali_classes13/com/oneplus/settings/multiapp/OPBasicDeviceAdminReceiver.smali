.class public Lcom/oneplus/settings/multiapp/OPBasicDeviceAdminReceiver;
.super Landroid/app/admin/DeviceAdminReceiver;
.source "OPBasicDeviceAdminReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/admin/DeviceAdminReceiver;-><init>()V

    return-void
.end method

.method private enableProfile(Landroid/content/Context;)V
    .locals 3

    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-static {p1}, Lcom/oneplus/settings/multiapp/OPBasicDeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    const-string v2, "Multi-App"

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->setProfileName(Landroid/content/ComponentName;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->setProfileEnabled(Landroid/content/ComponentName;)V

    return-void
.end method

.method public static getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/oneplus/settings/multiapp/OPBasicDeviceAdminReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public onProfileProvisioningComplete(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "OPMultiAppListSettings"

    const-string v1, "onProfileProvisioningComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/oneplus/settings/multiapp/OPBasicDeviceAdminReceiver;->enableProfile(Landroid/content/Context;)V

    return-void
.end method
