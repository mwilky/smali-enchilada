.class public final Landroid/os/StrictMode$ViolationInfo;
.super Ljava/lang/Object;
.source "StrictMode.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViolationInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/StrictMode$ViolationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public broadcastIntentAction:Ljava/lang/String;

.field public durationMillis:I

.field private final mBinderStack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation
.end field

.field private final mPolicy:I

.field private mStackTrace:Ljava/lang/String;

.field private final mViolation:Landroid/os/strictmode/Violation;

.field public numAnimationsRunning:I

.field public numInstances:J

.field public tags:[Ljava/lang/String;

.field public violationNumThisLoop:I

.field public violationUptimeMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/StrictMode$ViolationInfo$1;

    invoke-direct {v0}, Landroid/os/StrictMode$ViolationInfo$1;-><init>()V

    sput-object v0, Landroid/os/StrictMode$ViolationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/Parcel;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Z)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mBinderStack:Ljava/util/Deque;

    const/4 v0, -0x1

    iput v0, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Landroid/os/strictmode/Violation;

    iput-object v1, p0, Landroid/os/StrictMode$ViolationInfo;->mViolation:Landroid/os/strictmode/Violation;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    new-array v3, v3, [Ljava/lang/StackTraceElement;

    move v4, v0

    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_0

    new-instance v5, Ljava/lang/StackTraceElement;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-direct {v5, v6, v7, v8, v9}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    iget-object v4, p0, Landroid/os/StrictMode$ViolationInfo;->mBinderStack:Ljava/util/Deque;

    invoke-interface {v4, v3}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz p2, :cond_2

    const v2, -0x400001

    and-int/2addr v2, v0

    iput v2, p0, Landroid/os/StrictMode$ViolationInfo;->mPolicy:I

    goto :goto_2

    :cond_2
    iput v0, p0, Landroid/os/StrictMode$ViolationInfo;->mPolicy:I

    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/os/StrictMode$ViolationInfo;->violationNumThisLoop:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/StrictMode$ViolationInfo;->violationUptimeMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/os/strictmode/Violation;I)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mBinderStack:Ljava/util/Deque;

    const/4 v0, -0x1

    iput v0, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    iput-object p1, p0, Landroid/os/StrictMode$ViolationInfo;->mViolation:Landroid/os/strictmode/Violation;

    iput p2, p0, Landroid/os/StrictMode$ViolationInfo;->mPolicy:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/StrictMode$ViolationInfo;->violationUptimeMillis:J

    invoke-static {}, Landroid/animation/ValueAnimator;->getCurrentAnimationsCount()I

    move-result v1

    iput v1, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    invoke-static {}, Landroid/app/ActivityThread;->getIntentBeingBroadcast()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->access$2400()Ljava/lang/ThreadLocal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/StrictMode$ThreadSpanState;

    instance-of v3, p1, Landroid/os/strictmode/InstanceCountViolation;

    if-eqz v3, :cond_1

    move-object v3, p1

    check-cast v3, Landroid/os/strictmode/InstanceCountViolation;

    invoke-virtual {v3}, Landroid/os/strictmode/InstanceCountViolation;->getNumberOfInstances()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    :cond_1
    monitor-enter v2

    :try_start_0
    iget v3, v2, Landroid/os/StrictMode$ThreadSpanState;->mActiveSize:I

    const/16 v4, 0x14

    if-le v3, v4, :cond_2

    const/16 v3, 0x14

    :cond_2
    if-eqz v3, :cond_3

    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    iget-object v4, v2, Landroid/os/StrictMode$ThreadSpanState;->mActiveHead:Landroid/os/StrictMode$Span;

    nop

    :goto_0
    if-eqz v4, :cond_3

    if-ge v0, v3, :cond_3

    iget-object v5, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    invoke-static {v4}, Landroid/os/StrictMode$Span;->access$2100(Landroid/os/StrictMode$Span;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v4}, Landroid/os/StrictMode$Span;->access$2000(Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    move-result-object v5

    move-object v4, v5

    goto :goto_0

    :cond_3
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$1200(Landroid/os/StrictMode$ViolationInfo;)Landroid/os/strictmode/Violation;
    .locals 1

    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mViolation:Landroid/os/strictmode/Violation;

    return-object v0
.end method

.method static synthetic access$500(Landroid/os/StrictMode$ViolationInfo;)I
    .locals 1

    iget v0, p0, Landroid/os/StrictMode$ViolationInfo;->mPolicy:I

    return v0
.end method


# virtual methods
.method addLocalStack(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mBinderStack:Ljava/util/Deque;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "stackTrace: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/StrictMode$ViolationInfo;->getStackTrace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "policy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/StrictMode$ViolationInfo;->mPolicy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget v0, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "durationMillis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_0
    iget-wide v0, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "numInstances: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Landroid/os/StrictMode$ViolationInfo;->violationNumThisLoop:I

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "violationNumThisLoop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/StrictMode$ViolationInfo;->violationNumThisLoop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_2
    iget v0, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "numAnimationsRunning: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "violationUptimeMillis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/os/StrictMode$ViolationInfo;->violationUptimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "broadcastIntentAction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, v1, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "tag["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    move v0, v6

    goto :goto_0

    :cond_5
    return-void
.end method

.method public getPolicyMask()I
    .locals 1

    iget v0, p0, Landroid/os/StrictMode$ViolationInfo;->mPolicy:I

    return v0
.end method

.method public getStackTrace()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mStackTrace:Ljava/lang/String;

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    const/16 v2, 0x100

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v2}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    iget-object v2, p0, Landroid/os/StrictMode$ViolationInfo;->mViolation:Landroid/os/strictmode/Violation;

    invoke-virtual {v2, v1}, Landroid/os/strictmode/Violation;->printStackTrace(Ljava/io/PrintWriter;)V

    iget-object v2, p0, Landroid/os/StrictMode$ViolationInfo;->mBinderStack:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/StackTraceElement;

    const-string v5, "# via Binder call with stack:\n"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    array-length v5, v4

    move v6, v3

    :goto_1
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    const-string v8, "\tat "

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const/16 v8, 0xa

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/os/StrictMode$ViolationInfo;->mStackTrace:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mStackTrace:Ljava/lang/String;

    return-object v0
.end method

.method public getViolationBit()I
    .locals 2

    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mViolation:Landroid/os/strictmode/Violation;

    instance-of v0, v0, Landroid/os/strictmode/DiskWriteViolation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mViolation:Landroid/os/strictmode/Violation;

    instance-of v0, v0, Landroid/os/strictmode/DiskReadViolation;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mViolation:Landroid/os/strictmode/Violation;

    instance-of v0, v0, Landroid/os/strictmode/NetworkViolation;

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    return v0

    :cond_2
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mViolation:Landroid/os/strictmode/Violation;

    instance-of v0, v0, Landroid/os/strictmode/CustomViolation;

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    return v0

    :cond_3
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mViolation:Landroid/os/strictmode/Violation;

    instance-of v0, v0, Landroid/os/strictmode/ResourceMismatchViolation;

    if-eqz v0, :cond_4

    const/16 v0, 0x10

    return v0

    :cond_4
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mViolation:Landroid/os/strictmode/Violation;

    instance-of v0, v0, Landroid/os/strictmode/UnbufferedIoViolation;

    if-eqz v0, :cond_5

    const/16 v0, 0x20

    return v0

    :cond_5
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mViolation:Landroid/os/strictmode/Violation;

    instance-of v0, v0, Landroid/os/strictmode/SqliteObjectLeakedViolation;

    if-eqz v0, :cond_6

    const/16 v0, 0x100

    return v0

    :cond_6
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mViolation:Landroid/os/strictmode/Violation;

    instance-of v0, v0, Landroid/os/strictmode/LeakedClosableViolation;

    if-eqz v0, :cond_7

    const/16 v0, 0x200

    return v0

    :cond_7
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mViolation:Landroid/os/strictmode/Violation;

    instance-of v0, v0, Landroid/os/strictmode/InstanceCountViolation;

    if-eqz v0, :cond_8

    const/16 v0, 0x800

    return v0

    :cond_8
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mViolation:Landroid/os/strictmode/Violation;

    instance-of v0, v0, Landroid/os/strictmode/IntentReceiverLeakedViolation;

    const/16 v1, 0x1000

    if-eqz v0, :cond_9

    return v1

    :cond_9
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mViolation:Landroid/os/strictmode/Violation;

    instance-of v0, v0, Landroid/os/strictmode/ServiceConnectionLeakedViolation;

    if-eqz v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mViolation:Landroid/os/strictmode/Violation;

    instance-of v0, v0, Landroid/os/strictmode/FileUriExposedViolation;

    if-eqz v0, :cond_b

    const/16 v0, 0x2000

    return v0

    :cond_b
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mViolation:Landroid/os/strictmode/Violation;

    instance-of v0, v0, Landroid/os/strictmode/CleartextNetworkViolation;

    if-eqz v0, :cond_c

    const/16 v0, 0x4000

    return v0

    :cond_c
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mViolation:Landroid/os/strictmode/Violation;

    instance-of v0, v0, Landroid/os/strictmode/ContentUriWithoutPermissionViolation;

    if-eqz v0, :cond_d

    const v0, 0x8000

    return v0

    :cond_d
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mViolation:Landroid/os/strictmode/Violation;

    instance-of v0, v0, Landroid/os/strictmode/UntaggedSocketViolation;

    if-eqz v0, :cond_e

    const/high16 v0, -0x80000000

    return v0

    :cond_e
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mViolation:Landroid/os/strictmode/Violation;

    instance-of v0, v0, Landroid/os/strictmode/NonSdkApiUsedViolation;

    if-eqz v0, :cond_f

    const/high16 v0, 0x40000000    # 2.0f

    return v0

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "missing violation bit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getViolationDetails()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mViolation:Landroid/os/strictmode/Violation;

    invoke-virtual {v0}, Landroid/os/strictmode/Violation;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 8

    const/16 v0, 0x11

    iget-object v1, p0, Landroid/os/StrictMode$ViolationInfo;->mViolation:Landroid/os/strictmode/Violation;

    const/16 v2, 0x25

    if-eqz v1, :cond_0

    mul-int v1, v2, v0

    iget-object v3, p0, Landroid/os/StrictMode$ViolationInfo;->mViolation:Landroid/os/strictmode/Violation;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    :cond_0
    iget v1, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    :cond_1
    iget-object v1, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    if-eqz v1, :cond_2

    mul-int v1, v2, v0

    iget-object v3, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    :cond_2
    iget-object v1, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    mul-int v6, v2, v0

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    add-int v0, v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method penaltyEnabled(I)Z
    .locals 1

    iget v0, p0, Landroid/os/StrictMode$ViolationInfo;->mPolicy:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mViolation:Landroid/os/strictmode/Violation;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mBinderStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mBinderStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/StackTraceElement;

    array-length v2, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    iget v1, p0, Landroid/os/StrictMode$ViolationInfo;->mPolicy:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/os/StrictMode$ViolationInfo;->violationNumThisLoop:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v1, p0, Landroid/os/StrictMode$ViolationInfo;->violationUptimeMillis:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v1, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v1, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    sub-int/2addr v1, v0

    return-void
.end method
