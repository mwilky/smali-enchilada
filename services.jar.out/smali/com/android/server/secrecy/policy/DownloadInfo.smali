.class public Lcom/android/server/secrecy/policy/DownloadInfo;
.super Ljava/lang/Object;
.source "DownloadInfo.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mCurrentDownloadDate:Ljava/lang/String;

.field private mCurrentDownloadInternal:Z

.field private mCurrentDownloadStatus:Ljava/lang/String;

.field private mCurrentDownloadTime:Ljava/lang/String;

.field private mCurrentDownloadTimeInMillis:J

.field private mLastDownloadTimeInMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SecrecyService.FlashInfo"

    sput-object v0, Lcom/android/server/secrecy/policy/DownloadInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentDownloadInternal   = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/secrecy/policy/DownloadInfo;->mCurrentDownloadInternal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentDownloadStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/secrecy/policy/DownloadInfo;->mCurrentDownloadStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentDownloadTimeInMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/secrecy/policy/DownloadInfo;->mCurrentDownloadTimeInMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mLastDownloadTimeInMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/secrecy/policy/DownloadInfo;->mLastDownloadTimeInMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public getCurrentDownloadTimeInMills()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/secrecy/policy/DownloadInfo;->mCurrentDownloadTimeInMillis:J

    return-wide v0
.end method

.method public getLastDownloadTimeInMills()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/secrecy/policy/DownloadInfo;->mLastDownloadTimeInMillis:J

    return-wide v0
.end method

.method public isCurrentDownloadInternal()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/secrecy/policy/DownloadInfo;->mCurrentDownloadInternal:Z

    return v0
.end method

.method public readDownloadInfo()V
    .locals 2

    invoke-static {}, Lcom/android/server/secrecy/policy/util/Utils;->getDownloadStatusString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/secrecy/policy/DownloadInfo;->mCurrentDownloadStatus:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/secrecy/policy/util/Utils;->isFlashedInternal()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/secrecy/policy/DownloadInfo;->mCurrentDownloadInternal:Z

    iget-object v0, p0, Lcom/android/server/secrecy/policy/DownloadInfo;->mCurrentDownloadStatus:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/secrecy/policy/util/Utils;->getDownloadDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/secrecy/policy/DownloadInfo;->mCurrentDownloadDate:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/secrecy/policy/DownloadInfo;->mCurrentDownloadStatus:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/secrecy/policy/util/Utils;->getDownloadTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/secrecy/policy/DownloadInfo;->mCurrentDownloadTime:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/secrecy/policy/DownloadInfo;->mCurrentDownloadDate:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/secrecy/policy/DownloadInfo;->mCurrentDownloadTime:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/secrecy/policy/util/Utils;->getFlashIimeInMillis(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/secrecy/policy/DownloadInfo;->mCurrentDownloadTimeInMillis:J

    return-void
.end method

.method public setLastDownloadTimeInMills(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/secrecy/policy/DownloadInfo;->mLastDownloadTimeInMillis:J

    :cond_0
    sget-object v0, Lcom/android/server/secrecy/policy/DownloadInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLastDownloadTimeInMills, mLastDownloadTimeInMillis = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/secrecy/policy/DownloadInfo;->mLastDownloadTimeInMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", lastDownloadTimeInMillis = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
