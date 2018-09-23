.class Lcom/android/server/display/ColorDisplayService$CustomAutoMode$1;
.super Landroid/content/BroadcastReceiver;
.source "ColorDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/ColorDisplayService$CustomAutoMode;-><init>(Lcom/android/server/display/ColorDisplayService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/ColorDisplayService$CustomAutoMode;

.field final synthetic val$this$0:Lcom/android/server/display/ColorDisplayService;


# direct methods
.method constructor <init>(Lcom/android/server/display/ColorDisplayService$CustomAutoMode;Lcom/android/server/display/ColorDisplayService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode$1;->this$1:Lcom/android/server/display/ColorDisplayService$CustomAutoMode;

    iput-object p2, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode$1;->val$this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode$1;->this$1:Lcom/android/server/display/ColorDisplayService$CustomAutoMode;

    invoke-static {v0}, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->access$800(Lcom/android/server/display/ColorDisplayService$CustomAutoMode;)V

    return-void
.end method
