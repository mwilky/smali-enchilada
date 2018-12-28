.class public Lcom/android/server/am/OnePlusJankManager$JankReportItem;
.super Ljava/lang/Object;
.source "OnePlusJankManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusJankManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JankReportItem"
.end annotation


# instance fields
.field public jankLevel:Ljava/lang/String;

.field public jankType:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public viewName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
