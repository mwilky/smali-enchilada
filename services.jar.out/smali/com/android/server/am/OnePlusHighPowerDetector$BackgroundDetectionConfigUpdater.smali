.class Lcom/android/server/am/OnePlusHighPowerDetector$BackgroundDetectionConfigUpdater;
.super Ljava/lang/Object;
.source "OnePlusHighPowerDetector.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusHighPowerDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BackgroundDetectionConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusHighPowerDetector;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusHighPowerDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$BackgroundDetectionConfigUpdater;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$BackgroundDetectionConfigUpdater;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-static {v0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$1000(Lcom/android/server/am/OnePlusHighPowerDetector;Lorg/json/JSONArray;)V

    return-void
.end method
