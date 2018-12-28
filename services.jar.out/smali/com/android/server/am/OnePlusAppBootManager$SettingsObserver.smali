.class final Lcom/android/server/am/OnePlusAppBootManager$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "OnePlusAppBootManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusAppBootManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusAppBootManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusAppBootManager;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusAppBootManager$SettingsObserver;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$SettingsObserver;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    const-string v1, "change"

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusAppBootManager;->access$1700(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;)V

    return-void
.end method
