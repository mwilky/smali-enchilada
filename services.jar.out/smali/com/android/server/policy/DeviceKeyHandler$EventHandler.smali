.class Lcom/android/server/policy/DeviceKeyHandler$EventHandler;
.super Landroid/os/Handler;
.source "DeviceKeyHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/DeviceKeyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# static fields
.field static final MSG_KEY_EVENT:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/DeviceKeyHandler;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/DeviceKeyHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/DeviceKeyHandler;Lcom/android/server/policy/DeviceKeyHandler$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;-><init>(Lcom/android/server/policy/DeviceKeyHandler;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-static {v0}, Lcom/android/server/policy/DeviceKeyHandler;->access$700(Lcom/android/server/policy/DeviceKeyHandler;)V

    nop

    :goto_0
    return-void
.end method
