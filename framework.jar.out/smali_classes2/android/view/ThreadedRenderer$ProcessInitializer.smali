.class Landroid/view/ThreadedRenderer$ProcessInitializer;
.super Ljava/lang/Object;
.source "ThreadedRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ThreadedRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProcessInitializer"
.end annotation


# static fields
.field static sInstance:Landroid/view/ThreadedRenderer$ProcessInitializer;


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mGraphicsStatsCallback:Landroid/view/IGraphicsStatsCallback;

.field private mGraphicsStatsService:Landroid/view/IGraphicsStats;

.field private mInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1092
    new-instance v0, Landroid/view/ThreadedRenderer$ProcessInitializer;

    invoke-direct {v0}, Landroid/view/ThreadedRenderer$ProcessInitializer;-><init>()V

    sput-object v0, Landroid/view/ThreadedRenderer$ProcessInitializer;->sInstance:Landroid/view/ThreadedRenderer$ProcessInitializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1094
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ThreadedRenderer$ProcessInitializer;->mInitialized:Z

    .line 1098
    new-instance v0, Landroid/view/ThreadedRenderer$ProcessInitializer$1;

    invoke-direct {v0, p0}, Landroid/view/ThreadedRenderer$ProcessInitializer$1;-><init>(Landroid/view/ThreadedRenderer$ProcessInitializer;)V

    iput-object v0, p0, Landroid/view/ThreadedRenderer$ProcessInitializer;->mGraphicsStatsCallback:Landroid/view/IGraphicsStatsCallback;

    .line 1105
    return-void
.end method

.method static synthetic access$1100(Landroid/view/ThreadedRenderer$ProcessInitializer;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ThreadedRenderer$ProcessInitializer;

    .line 1091
    invoke-direct {p0}, Landroid/view/ThreadedRenderer$ProcessInitializer;->rotateBuffer()V

    return-void
.end method

.method private initGraphicsStats()V
    .locals 3

    .line 1130
    :try_start_0
    const-string v0, "graphicsstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1131
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_0

    return-void

    .line 1132
    :cond_0
    invoke-static {v0}, Landroid/view/IGraphicsStats$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IGraphicsStats;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ThreadedRenderer$ProcessInitializer;->mGraphicsStatsService:Landroid/view/IGraphicsStats;

    .line 1133
    invoke-direct {p0}, Landroid/view/ThreadedRenderer$ProcessInitializer;->requestBuffer()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1136
    .end local v0    # "binder":Landroid/os/IBinder;
    goto :goto_0

    .line 1134
    :catch_0
    move-exception v0

    .line 1135
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "ThreadedRenderer"

    const-string v2, "Could not acquire gfx stats buffer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1137
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private initSched(J)V
    .locals 3
    .param p1, "renderProxy"    # J

    .line 1121
    :try_start_0
    invoke-static {p1, p2}, Landroid/view/ThreadedRenderer;->access$1200(J)I

    move-result v0

    .line 1122
    .local v0, "tid":I
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->setRenderThread(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1125
    .end local v0    # "tid":I
    goto :goto_0

    .line 1123
    :catch_0
    move-exception v0

    .line 1124
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "ThreadedRenderer"

    const-string v2, "Failed to set scheduler for RenderThread"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1126
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private requestBuffer()V
    .locals 3

    .line 1146
    :try_start_0
    iget-object v0, p0, Landroid/view/ThreadedRenderer$ProcessInitializer;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1147
    .local v0, "pkg":Ljava/lang/String;
    iget-object v1, p0, Landroid/view/ThreadedRenderer$ProcessInitializer;->mGraphicsStatsService:Landroid/view/IGraphicsStats;

    iget-object v2, p0, Landroid/view/ThreadedRenderer$ProcessInitializer;->mGraphicsStatsCallback:Landroid/view/IGraphicsStatsCallback;

    .line 1148
    invoke-interface {v1, v0, v2}, Landroid/view/IGraphicsStats;->requestBufferForProcess(Ljava/lang/String;Landroid/view/IGraphicsStatsCallback;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 1149
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v2

    invoke-static {v2}, Landroid/view/ThreadedRenderer;->access$1400(I)V

    .line 1150
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1153
    .end local v0    # "pkg":Ljava/lang/String;
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    goto :goto_0

    .line 1151
    :catch_0
    move-exception v0

    .line 1152
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "ThreadedRenderer"

    const-string v2, "Could not acquire gfx stats buffer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1154
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private rotateBuffer()V
    .locals 0

    .line 1140
    invoke-static {}, Landroid/view/ThreadedRenderer;->access$1300()V

    .line 1141
    invoke-direct {p0}, Landroid/view/ThreadedRenderer$ProcessInitializer;->requestBuffer()V

    .line 1142
    return-void
.end method


# virtual methods
.method declared-synchronized init(Landroid/content/Context;J)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "renderProxy"    # J

    monitor-enter p0

    .line 1108
    :try_start_0
    iget-boolean v0, p0, Landroid/view/ThreadedRenderer$ProcessInitializer;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 1109
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Landroid/view/ThreadedRenderer$ProcessInitializer;->mInitialized:Z

    .line 1110
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ThreadedRenderer$ProcessInitializer;->mAppContext:Landroid/content/Context;

    .line 1112
    invoke-direct {p0, p2, p3}, Landroid/view/ThreadedRenderer$ProcessInitializer;->initSched(J)V

    .line 1114
    iget-object v0, p0, Landroid/view/ThreadedRenderer$ProcessInitializer;->mAppContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 1115
    invoke-direct {p0}, Landroid/view/ThreadedRenderer$ProcessInitializer;->initGraphicsStats()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1117
    :cond_1
    monitor-exit p0

    return-void

    .line 1107
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "renderProxy":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/view/ThreadedRenderer$ProcessInitializer;
    throw p1
.end method
