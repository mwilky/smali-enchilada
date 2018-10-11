.class public Lcom/oneplus/screenshot/statistics/EventStatistics;
.super Ljava/lang/Object;
.source "EventStatistics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/statistics/EventStatistics$Action;,
        Lcom/oneplus/screenshot/statistics/EventStatistics$Error;,
        Lcom/oneplus/screenshot/statistics/EventStatistics$Base;
    }
.end annotation


# static fields
.field private static APPBASE:I

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/oneplus/screenshot/statistics/EventStatistics;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/screenshot/statistics/EventStatistics;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/oneplus/screenshot/statistics/EventStatistics;->APPBASE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, Lcom/oneplus/screenshot/statistics/EventStatistics;->APPBASE:I

    return v0
.end method

.method public static addAction(Landroid/content/Context;Lcom/oneplus/screenshot/statistics/EventStatistics$Action;)V
    .locals 0

    return-void
.end method

.method public static addError(Landroid/content/Context;Lcom/oneplus/screenshot/statistics/EventStatistics$Error;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "AppCode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v2, v1, 0x2710

    sput v2, Lcom/oneplus/screenshot/statistics/EventStatistics;->APPBASE:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_0
    nop

    :goto_1
    return-void
.end method

.method private static isDebuggable(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/oneplus/screenshot/util/Utils;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static onDebug(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public static onError(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public static onPause(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public static onResume(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
