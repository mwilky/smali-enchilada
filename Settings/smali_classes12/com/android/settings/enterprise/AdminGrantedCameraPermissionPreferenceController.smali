.class public Lcom/android/settings/enterprise/AdminGrantedCameraPermissionPreferenceController;
.super Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;
.source "AdminGrantedCameraPermissionPreferenceController.java"


# static fields
.field private static final KEY_ENTERPRISE_PRIVACY_NUMBER_CAMERA_ACCESS_PACKAGES:Ljava/lang/String; = "enterprise_privacy_number_camera_access_packages"


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "android.permission.CAMERA"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;-><init>(Landroid/content/Context;Z[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "enterprise_privacy_number_camera_access_packages"

    return-object v0
.end method
