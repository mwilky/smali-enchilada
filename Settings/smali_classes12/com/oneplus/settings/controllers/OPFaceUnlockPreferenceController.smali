.class public Lcom/oneplus/settings/controllers/OPFaceUnlockPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPFaceUnlockPreferenceController.java"


# static fields
.field private static final KEY_FACEUNLOCK:Ljava/lang/String; = "oneplus_face_unlock"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    const-string v0, "oneplus_face_unlock"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 50
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const/4 v0, 0x3

    return v0

    .line 53
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 45
    const-string v0, "oneplus_face_unlock"

    return-object v0
.end method
