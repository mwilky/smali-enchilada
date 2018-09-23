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

    iput-object p1, p0, Lcom/android/server/am/RecentTasks$LockedTasksContentObserver;->this$0:Lcom/android/server/am/RecentTasks;

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/RecentTasks$LockedTasksContentObserver;->this$0:Lcom/android/server/am/RecentTasks;

    invoke-static {v0}, Lcom/android/server/am/RecentTasks;->access$000(Lcom/android/server/am/RecentTasks;)V

    return-void
.end method
