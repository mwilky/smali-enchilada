.class public Lcom/oneplus/settings/defaultapp/controller/DefaultMailController;
.super Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;
.source "DefaultMailController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getType()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/oneplus/settings/defaultapp/DefaultAppUtils;->getKeyTypeString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
