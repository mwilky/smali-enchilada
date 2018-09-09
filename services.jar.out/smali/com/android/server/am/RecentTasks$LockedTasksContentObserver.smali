.class public Lcom/android/server/am/RecentTasks$LockedTasksContentObserver;
.super Landroid/database/ContentObserver;
.source "RecentTasks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/RecentTasks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LockedTasksContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/RecentTasks;


# direct methods
.method public constructor <init>(Lcom/android/server/am/RecentTasks;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/RecentTasks;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 243
    iput-object p1, p0, Lcom/android/server/am/RecentTasks$LockedTasksContentObserver;->this$0:Lcom/android/server/am/RecentTasks;

    .line 244
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 245
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 248
    iget-object v0, p0, Lcom/android/server/am/RecentTasks$LockedTasksContentObserver;->this$0:Lcom/android/server/am/RecentTasks;

    invoke-static {v0}, Lcom/android/server/am/RecentTasks;->access$000(Lcom/android/server/am/RecentTasks;)V

    .line 249
    return-void
.end method
