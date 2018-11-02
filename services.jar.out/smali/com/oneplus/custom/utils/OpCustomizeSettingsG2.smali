.class public Lcom/oneplus/custom/utils/OpCustomizeSettingsG2;
.super Lcom/oneplus/custom/utils/OpCustomizeSettings;
.source "OpCustomizeSettingsG2.java"


# static fields
.field private static final SUPPORT_GET_SECURE_WP_PKG_1:Ljava/lang/String; = "net.oneplus.wallpaperresources"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/custom/utils/OpCustomizeSettings;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCustomBackCoverColor()J
    .locals 5

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/oneplus/custom/utils/ParamReader;->getBackCoverColorVal()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v3

    const-wide/16 v3, -0x1

    and-long/2addr v0, v3

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "OpCustomizeSettings"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-wide v0
.end method

.method protected getCustomBackCoverType()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_BACK_COVER_TYPE;
    .locals 3

    sget-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_BACK_COVER_TYPE;->NONE:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_BACK_COVER_TYPE;

    invoke-static {}, Lcom/oneplus/custom/utils/ParamReader;->getBackCoverColorVal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "fffe3d3e"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_1
    const-string v2, "fff6f7f7"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v2, "ffc199b3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_3
    const-string v2, "ff3d3740"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_4
    const-string v2, "ff2c2630"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    sget-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_BACK_COVER_TYPE;->DGZ:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_BACK_COVER_TYPE;

    goto :goto_2

    :pswitch_1
    sget-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_BACK_COVER_TYPE;->HPH:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_BACK_COVER_TYPE;

    goto :goto_2

    :pswitch_2
    sget-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_BACK_COVER_TYPE;->YYB:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_BACK_COVER_TYPE;

    goto :goto_2

    :pswitch_3
    sget-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_BACK_COVER_TYPE;->LCH:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_BACK_COVER_TYPE;

    goto :goto_2

    :pswitch_4
    sget-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_BACK_COVER_TYPE;->MYH:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_BACK_COVER_TYPE;

    nop

    :goto_2
    return-object v0

    nop

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

.method protected getCustomization()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;
    .locals 3

    sget-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->NONE:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    invoke-static {}, Lcom/oneplus/custom/utils/ParamReader;->getCustFlagVal()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->OPR_RETAIL:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->MCL:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->AVG:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    nop

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getSecureWPKey(Landroid/content/Context;)[B
    .locals 5

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    const-string/jumbo v2, "ro.remount.time"

    invoke-static {v2}, Lcom/oneplus/custom/utils/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "OpCustomizeSettings"

    const-string v3, "device was remounted, exit"

    invoke-static {v1, v3}, Lcom/oneplus/custom/utils/MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    const-string/jumbo v1, "net.oneplus.wallpaperresources"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "OpCustomizeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "not ready for : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oneplus/custom/utils/MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {}, Lcom/oneplus/custom/utils/ParamReader;->getSecureWPKey()[B

    move-result-object v1

    return-object v1
.end method
