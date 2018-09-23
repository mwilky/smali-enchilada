.class public Landroid/net/ip/ConnectivityPacketTracker;
.super Ljava/lang/Object;
.source "ConnectivityPacketTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ip/ConnectivityPacketTracker$PacketListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final MARK_NAMED_START:Ljava/lang/String; = "--- START (%s) ---"

.field private static final MARK_NAMED_STOP:Ljava/lang/String; = "--- STOP (%s) ---"

.field private static final MARK_START:Ljava/lang/String; = "--- START ---"

.field private static final MARK_STOP:Ljava/lang/String; = "--- STOP ---"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDisplayName:Ljava/lang/String;

.field private final mLog:Landroid/util/LocalLog;

.field private final mPacketListener:Landroid/net/util/PacketReader;

.field private mRunning:Z

.field private final mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/net/ip/ConnectivityPacketTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/ip/ConnectivityPacketTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/net/util/InterfaceParams;Landroid/util/LocalLog;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/net/ip/ConnectivityPacketTracker;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Landroid/net/util/InterfaceParams;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ip/ConnectivityPacketTracker;->mTag:Ljava/lang/String;

    iput-object p3, p0, Landroid/net/ip/ConnectivityPacketTracker;->mLog:Landroid/util/LocalLog;

    new-instance v0, Landroid/net/ip/ConnectivityPacketTracker$PacketListener;

    invoke-direct {v0, p0, p1, p2}, Landroid/net/ip/ConnectivityPacketTracker$PacketListener;-><init>(Landroid/net/ip/ConnectivityPacketTracker;Landroid/os/Handler;Landroid/net/util/InterfaceParams;)V

    iput-object v0, p0, Landroid/net/ip/ConnectivityPacketTracker;->mPacketListener:Landroid/net/util/PacketReader;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null InterfaceParams"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Landroid/net/ip/ConnectivityPacketTracker;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/ip/ConnectivityPacketTracker;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/ip/ConnectivityPacketTracker;)Landroid/util/LocalLog;
    .locals 1

    iget-object v0, p0, Landroid/net/ip/ConnectivityPacketTracker;->mLog:Landroid/util/LocalLog;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/ip/ConnectivityPacketTracker;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/ip/ConnectivityPacketTracker;->mRunning:Z

    return v0
.end method

.method static synthetic access$300(Landroid/net/ip/ConnectivityPacketTracker;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/ip/ConnectivityPacketTracker;->mTag:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public start(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/ip/ConnectivityPacketTracker;->mRunning:Z

    iput-object p1, p0, Landroid/net/ip/ConnectivityPacketTracker;->mDisplayName:Ljava/lang/String;

    iget-object v0, p0, Landroid/net/ip/ConnectivityPacketTracker;->mPacketListener:Landroid/net/util/PacketReader;

    invoke-virtual {v0}, Landroid/net/util/PacketReader;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Landroid/net/ip/ConnectivityPacketTracker;->mPacketListener:Landroid/net/util/PacketReader;

    invoke-virtual {v0}, Landroid/net/util/PacketReader;->stop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/ip/ConnectivityPacketTracker;->mRunning:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/ip/ConnectivityPacketTracker;->mDisplayName:Ljava/lang/String;

    return-void
.end method
