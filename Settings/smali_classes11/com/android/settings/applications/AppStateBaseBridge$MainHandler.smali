.class Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;
.super Landroid/os/Handler;
.source "AppStateBaseBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppStateBaseBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# static fields
.field private static final MSG_INFO_UPDATED:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/AppStateBaseBridge;


# direct methods
.method private constructor <init>(Lcom/android/settings/applications/AppStateBaseBridge;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;->this$0:Lcom/android/settings/applications/AppStateBaseBridge;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/applications/AppStateBaseBridge;Lcom/android/settings/applications/AppStateBaseBridge$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;-><init>(Lcom/android/settings/applications/AppStateBaseBridge;)V

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
    iget-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;->this$0:Lcom/android/settings/applications/AppStateBaseBridge;

    iget-object v0, v0, Lcom/android/settings/applications/AppStateBaseBridge;->mCallback:Lcom/android/settings/applications/AppStateBaseBridge$Callback;

    invoke-interface {v0}, Lcom/android/settings/applications/AppStateBaseBridge$Callback;->onExtraInfoUpdated()V

    :goto_0
    return-void
.end method
