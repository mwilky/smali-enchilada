.class public Lcom/oneplus/settings/defaultapp/controller/DefaultMusicController;
.super Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;
.source "DefaultMusicController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 16
    invoke-direct {p0, p1}, Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected getType()Ljava/lang/String;
    .locals 1

    .line 21
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/oneplus/settings/defaultapp/DefaultAppUtils;->getKeyTypeString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
