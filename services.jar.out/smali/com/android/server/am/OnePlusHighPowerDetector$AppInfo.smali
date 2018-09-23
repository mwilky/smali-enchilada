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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;->uid:I

    iput p2, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;->pid:I

    iput-object p3, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;->pkgName:Ljava/lang/String;

    return-void
.end method
