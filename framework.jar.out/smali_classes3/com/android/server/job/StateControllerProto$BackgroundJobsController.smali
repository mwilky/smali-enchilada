.class public final Lcom/android/server/job/StateControllerProto$BackgroundJobsController;
.super Ljava/lang/Object;
.source "StateControllerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/StateControllerProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BackgroundJobsController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/StateControllerProto$BackgroundJobsController$TrackedJob;
    }
.end annotation


# static fields
.field public static final FORCE_APP_STANDBY_TRACKER:J = 0x10b00000001L

.field public static final TRACKED_JOBS:J = 0x20b00000002L


# instance fields
.field final synthetic this$0:Lcom/android/server/job/StateControllerProto;


# direct methods
.method public constructor <init>(Lcom/android/server/job/StateControllerProto;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/job/StateControllerProto$BackgroundJobsController;->this$0:Lcom/android/server/job/StateControllerProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
