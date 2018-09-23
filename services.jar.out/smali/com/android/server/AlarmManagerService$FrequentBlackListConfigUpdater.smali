.class Lcom/android/server/AlarmManagerService$FrequentBlackListConfigUpdater;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FrequentBlackListConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/AlarmManagerService$FrequentBlackListConfigUpdater;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$FrequentBlackListConfigUpdater;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v0, p1}, Lcom/android/server/AlarmManagerService;->access$400(Lcom/android/server/AlarmManagerService;Lorg/json/JSONArray;)V

    return-void
.end method
