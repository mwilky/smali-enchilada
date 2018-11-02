.class public Lcom/oneplus/custom/utils/OpCustomizeSettings;
.super Ljava/lang/Object;
.source "OpCustomizeSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_BACK_COVER_TYPE;,
        Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "OpCustomizeSettings"

.field private static sOpCustomizeSettings:Lcom/oneplus/custom/utils/OpCustomizeSettings;

.field private static final sProjectName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "ro.boot.project_name"

    invoke-static {v0}, Lcom/oneplus/custom/utils/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings;->sProjectName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBackCoverColor()J
    .locals 3

    invoke-static {}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getInstance()Lcom/oneplus/custom/utils/OpCustomizeSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getCustomBackCoverColor()J

    move-result-wide v1

    return-wide v1
.end method

.method public static getBackCoverType()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_BACK_COVER_TYPE;
    .locals 2

    invoke-static {}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getInstance()Lcom/oneplus/custom/utils/OpCustomizeSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getCustomBackCoverType()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_BACK_COVER_TYPE;

    move-result-object v1

    return-object v1
.end method

.method public static getCustomType()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;
    .locals 2

    invoke-static {}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getInstance()Lcom/oneplus/custom/utils/OpCustomizeSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getCustomization()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    move-result-object v1

    return-object v1
.end method

.method private static getInstance()Lcom/oneplus/custom/utils/OpCustomizeSettings;
    .locals 3

    sget-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings;->sOpCustomizeSettings:Lcom/oneplus/custom/utils/OpCustomizeSettings;

    if-nez v0, :cond_4

    const-string v0, "OpCustomizeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sProjectName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/oneplus/custom/utils/OpCustomizeSettings;->sProjectName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/custom/utils/MyLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "16859"

    sget-object v1, Lcom/oneplus/custom/utils/OpCustomizeSettings;->sProjectName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "17801"

    sget-object v1, Lcom/oneplus/custom/utils/OpCustomizeSettings;->sProjectName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "17819"

    sget-object v1, Lcom/oneplus/custom/utils/OpCustomizeSettings;->sProjectName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "18801"

    sget-object v1, Lcom/oneplus/custom/utils/OpCustomizeSettings;->sProjectName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "18811"

    sget-object v1, Lcom/oneplus/custom/utils/OpCustomizeSettings;->sProjectName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/oneplus/custom/utils/OpCustomizeSettings;

    invoke-direct {v0}, Lcom/oneplus/custom/utils/OpCustomizeSettings;-><init>()V

    sput-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings;->sOpCustomizeSettings:Lcom/oneplus/custom/utils/OpCustomizeSettings;

    goto :goto_2

    :cond_2
    :goto_0
    new-instance v0, Lcom/oneplus/custom/utils/OpCustomizeSettingsG2;

    invoke-direct {v0}, Lcom/oneplus/custom/utils/OpCustomizeSettingsG2;-><init>()V

    sput-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings;->sOpCustomizeSettings:Lcom/oneplus/custom/utils/OpCustomizeSettings;

    goto :goto_2

    :cond_3
    :goto_1
    new-instance v0, Lcom/oneplus/custom/utils/OpCustomizeSettingsG1;

    invoke-direct {v0}, Lcom/oneplus/custom/utils/OpCustomizeSettingsG1;-><init>()V

    sput-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings;->sOpCustomizeSettings:Lcom/oneplus/custom/utils/OpCustomizeSettings;

    :cond_4
    :goto_2
    sget-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings;->sOpCustomizeSettings:Lcom/oneplus/custom/utils/OpCustomizeSettings;

    return-object v0
.end method

.method public static getWPKey(Landroid/content/Context;)[B
    .locals 2

    invoke-static {}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getInstance()Lcom/oneplus/custom/utils/OpCustomizeSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getSecureWPKey(Landroid/content/Context;)[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected getCustomBackCoverColor()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected getCustomBackCoverType()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_BACK_COVER_TYPE;
    .locals 1

    sget-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_BACK_COVER_TYPE;->NONE:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_BACK_COVER_TYPE;

    return-object v0
.end method

.method protected getCustomization()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;
    .locals 1

    sget-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->NONE:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    return-object v0
.end method

.method protected getSecureWPKey(Landroid/content/Context;)[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
