.class public Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;
.super Ljava/lang/Object;
.source "OnePlusHighPowerDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusHighPowerDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppInfo"
.end annotation


# instance fields
.field public final pid:I

.field public pkgName:Ljava/lang/String;

.field public final uid:I


# direct methods
.method constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "pkgName"    # Ljava/lang/String;

    .line 4414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4415
    iput p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;->uid:I

    .line 4416
    iput p2, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;->pid:I

    .line 4417
    iput-object p3, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;->pkgName:Ljava/lang/String;

    .line 4418
    return-void
.end method
