.class public Lcom/oneplus/settings/defaultapp/view/DefaultMailPicker;
.super Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;
.source "DefaultMailPicker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;-><init>()V

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
