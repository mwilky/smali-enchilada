.class public final Landroid/os/StrictMode$ThreadPolicy;
.super Ljava/lang/Object;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ThreadPolicy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/StrictMode$ThreadPolicy$Builder;
    }
.end annotation


# static fields
.field public static final LAX:Landroid/os/StrictMode$ThreadPolicy;


# instance fields
.field final mCallbackExecutor:Ljava/util/concurrent/Executor;

.field final mListener:Landroid/os/StrictMode$OnThreadViolationListener;

.field final mask:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 444
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v1}, Landroid/os/StrictMode$ThreadPolicy;-><init>(ILandroid/os/StrictMode$OnThreadViolationListener;Ljava/util/concurrent/Executor;)V

    sput-object v0, Landroid/os/StrictMode$ThreadPolicy;->LAX:Landroid/os/StrictMode$ThreadPolicy;

    return-void
.end method

.method private constructor <init>(ILandroid/os/StrictMode$OnThreadViolationListener;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "mask"    # I
    .param p2, "listener"    # Landroid/os/StrictMode$OnThreadViolationListener;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    iput p1, p0, Landroid/os/StrictMode$ThreadPolicy;->mask:I

    .line 452
    iput-object p2, p0, Landroid/os/StrictMode$ThreadPolicy;->mListener:Landroid/os/StrictMode$OnThreadViolationListener;

    .line 453
    iput-object p3, p0, Landroid/os/StrictMode$ThreadPolicy;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 454
    return-void
.end method

.method synthetic constructor <init>(ILandroid/os/StrictMode$OnThreadViolationListener;Ljava/util/concurrent/Executor;Landroid/os/StrictMode$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/os/StrictMode$OnThreadViolationListener;
    .param p3, "x2"    # Ljava/util/concurrent/Executor;
    .param p4, "x3"    # Landroid/os/StrictMode$1;

    .line 442
    invoke-direct {p0, p1, p2, p3}, Landroid/os/StrictMode$ThreadPolicy;-><init>(ILandroid/os/StrictMode$OnThreadViolationListener;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[StrictMode.ThreadPolicy; mask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/StrictMode$ThreadPolicy;->mask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
