.class public Lcom/oneplus/customization/CustomizationSettings;
.super Ljava/lang/Object;
.source "CustomizationSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/customization/CustomizationSettings$CUSTOM_BACK_COVER_TYPE;,
        Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;
    }
.end annotation


# static fields
.field private static final sProjectName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-string v0, "ro.boot.project_name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/customization/CustomizationSettings;->sProjectName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCustomBackCoverType()Lcom/oneplus/customization/CustomizationSettings$CUSTOM_BACK_COVER_TYPE;
    .locals 4

    .line 54
    sget-object v0, Lcom/oneplus/customization/CustomizationSettings$CUSTOM_BACK_COVER_TYPE;->NONE:Lcom/oneplus/customization/CustomizationSettings$CUSTOM_BACK_COVER_TYPE;

    .line 55
    .local v0, "result":Lcom/oneplus/customization/CustomizationSettings$CUSTOM_BACK_COVER_TYPE;
    const-string v1, "17819"

    sget-object v2, Lcom/oneplus/customization/CustomizationSettings;->sProjectName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "18801"

    sget-object v2, Lcom/oneplus/customization/CustomizationSettings;->sProjectName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "18811"

    sget-object v2, Lcom/oneplus/customization/CustomizationSettings;->sProjectName:Ljava/lang/String;

    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    :cond_0
    invoke-static {}, Lcom/oneplus/customization/ParamReader;->getBackCoverColorVal()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "fffe3d3e"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v3, "fff6f7f7"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v3, "ffc199b3"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_3
    const-string v3, "ff3d3740"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_4
    const-string v3, "ff2c2630"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 71
    :pswitch_0
    sget-object v0, Lcom/oneplus/customization/CustomizationSettings$CUSTOM_BACK_COVER_TYPE;->DGZ:Lcom/oneplus/customization/CustomizationSettings$CUSTOM_BACK_COVER_TYPE;

    .line 72
    goto :goto_1

    .line 68
    :pswitch_1
    sget-object v0, Lcom/oneplus/customization/CustomizationSettings$CUSTOM_BACK_COVER_TYPE;->HPH:Lcom/oneplus/customization/CustomizationSettings$CUSTOM_BACK_COVER_TYPE;

    .line 69
    goto :goto_1

    .line 65
    :pswitch_2
    sget-object v0, Lcom/oneplus/customization/CustomizationSettings$CUSTOM_BACK_COVER_TYPE;->YYB:Lcom/oneplus/customization/CustomizationSettings$CUSTOM_BACK_COVER_TYPE;

    .line 66
    goto :goto_1

    .line 62
    :pswitch_3
    sget-object v0, Lcom/oneplus/customization/CustomizationSettings$CUSTOM_BACK_COVER_TYPE;->LCH:Lcom/oneplus/customization/CustomizationSettings$CUSTOM_BACK_COVER_TYPE;

    .line 63
    goto :goto_1

    .line 59
    :pswitch_4
    sget-object v0, Lcom/oneplus/customization/CustomizationSettings$CUSTOM_BACK_COVER_TYPE;->MYH:Lcom/oneplus/customization/CustomizationSettings$CUSTOM_BACK_COVER_TYPE;

    .line 60
    nop

    .line 77
    :cond_2
    :goto_1
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x2daf91ae -> :sswitch_4
        -0x2bec294f -> :sswitch_3
        0x23308d1f -> :sswitch_2
        0x28a9fa32 -> :sswitch_1
        0x2b29bee2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getCustomization()Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;
    .locals 3

    .line 19
    sget-object v0, Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;->NONE:Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;

    .line 20
    .local v0, "result":Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;
    const-string v1, "16859"

    sget-object v2, Lcom/oneplus/customization/CustomizationSettings;->sProjectName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "17801"

    sget-object v2, Lcom/oneplus/customization/CustomizationSettings;->sProjectName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    const-string v1, "17819"

    sget-object v2, Lcom/oneplus/customization/CustomizationSettings;->sProjectName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 32
    invoke-static {}, Lcom/oneplus/customization/ParamReader;->getCustFlagVal()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 37
    goto :goto_1

    .line 34
    :cond_1
    sget-object v0, Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;->AVG:Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;

    .line 35
    goto :goto_1

    .line 39
    :cond_2
    const-string v1, "18801"

    sget-object v2, Lcom/oneplus/customization/CustomizationSettings;->sProjectName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 40
    invoke-static {}, Lcom/oneplus/customization/ParamReader;->getCustFlagVal()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3

    .line 45
    goto :goto_1

    .line 42
    :cond_3
    sget-object v0, Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;->MCL:Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;

    .line 43
    goto :goto_1

    .line 48
    :cond_4
    sget-object v0, Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;->NONE:Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;

    goto :goto_1

    .line 21
    :cond_5
    :goto_0
    invoke-static {}, Lcom/oneplus/customization/ParamReader;->getCustFlagVal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 29
    goto :goto_1

    .line 26
    :pswitch_0
    sget-object v0, Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;->SW:Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;

    .line 27
    goto :goto_1

    .line 23
    :pswitch_1
    sget-object v0, Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;->JCC:Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;

    .line 24
    nop

    .line 50
    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
