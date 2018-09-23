.class final Lcom/android/server/am/OnePlusProcessManager$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "OnePlusProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusProcessManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusProcessManager;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager$SettingsObserver;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager$SettingsObserver;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v0}, Lcom/android/server/am/OnePlusProcessManager;->access$000(Lcom/android/server/am/OnePlusProcessManager;)V

    return-void
.end method
