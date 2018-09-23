.class public Lcom/android/server/am/ActivityLaunchParamsModifier;
.super Ljava/lang/Object;
.source "ActivityLaunchParamsModifier.java"

# interfaces
.implements Lcom/android/server/am/LaunchParamsController$LaunchParamsModifier;


# instance fields
.field private final mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityLaunchParamsModifier;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    return-void
.end method


# virtual methods
.method public onCalculate(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/LaunchParamsController$LaunchParams;Lcom/android/server/am/LaunchParamsController$LaunchParams;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityLaunchParamsModifier;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p5}, Lcom/android/server/am/ActivityStackSupervisor;->canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->isResizeable()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p5}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p7, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_0
    return v0

    :cond_4
    :goto_1
    return v0
.end method
