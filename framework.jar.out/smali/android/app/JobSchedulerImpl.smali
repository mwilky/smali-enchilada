.class public Landroid/app/JobSchedulerImpl;
.super Landroid/app/job/JobScheduler;
.source "JobSchedulerImpl.java"


# instance fields
.field mBinder:Landroid/app/job/IJobScheduler;


# direct methods
.method constructor <init>(Landroid/app/job/IJobScheduler;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/job/JobScheduler;-><init>()V

    iput-object p1, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    return-void
.end method


# virtual methods
.method public cancel(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    invoke-interface {v0, p1}, Landroid/app/job/IJobScheduler;->cancel(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public cancelAll()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    invoke-interface {v0}, Landroid/app/job/IJobScheduler;->cancelAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public enqueue(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    invoke-interface {v0, p1, p2}, Landroid/app/job/IJobScheduler;->enqueue(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public getAllPendingJobs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    invoke-interface {v0}, Landroid/app/job/IJobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public getPendingJob(I)Landroid/app/job/JobInfo;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    invoke-interface {v0, p1}, Landroid/app/job/IJobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public schedule(Landroid/app/job/JobInfo;)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    invoke-interface {v0, p1}, Landroid/app/job/IJobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public scheduleAsPackage(Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/job/IJobScheduler;->scheduleAsPackage(Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method
