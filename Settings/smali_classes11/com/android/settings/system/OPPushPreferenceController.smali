.class public Lcom/android/settings/system/OPPushPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "OPPushPreferenceController.java"


# static fields
.field private static final KEY:Ljava/lang/String; = "onepus_receive_notifications"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p1, p0, Lcom/android/settings/system/OPPushPreferenceController;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 42
    const-string v0, "onepus_receive_notifications"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/android/settings/system/OPPushPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "net.oneplus.push"

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    const/4 v0, 0x0

    return v0

    .line 37
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
