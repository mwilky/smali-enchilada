.class Lcom/google/tagmanager/DefaultLogger;
.super Ljava/lang/Object;
.source "DefaultLogger.java"

# interfaces
.implements Lcom/google/tagmanager/Logger;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GoogleTagManager"


# instance fields
.field private mLogLevel:Lcom/google/tagmanager/Logger$LogLevel;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/tagmanager/Logger$LogLevel;->WARNING:Lcom/google/tagmanager/Logger$LogLevel;

    iput-object v0, p0, Lcom/google/tagmanager/DefaultLogger;->mLogLevel:Lcom/google/tagmanager/Logger$LogLevel;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/tagmanager/DefaultLogger;->mLogLevel:Lcom/google/tagmanager/Logger$LogLevel;

    invoke-virtual {v0}, Lcom/google/tagmanager/Logger$LogLevel;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/tagmanager/Logger$LogLevel;->DEBUG:Lcom/google/tagmanager/Logger$LogLevel;

    invoke-virtual {v1}, Lcom/google/tagmanager/Logger$LogLevel;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    const-string v0, "GoogleTagManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/tagmanager/DefaultLogger;->mLogLevel:Lcom/google/tagmanager/Logger$LogLevel;

    invoke-virtual {v0}, Lcom/google/tagmanager/Logger$LogLevel;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/tagmanager/Logger$LogLevel;->DEBUG:Lcom/google/tagmanager/Logger$LogLevel;

    invoke-virtual {v1}, Lcom/google/tagmanager/Logger$LogLevel;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    const-string v0, "GoogleTagManager"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/tagmanager/DefaultLogger;->mLogLevel:Lcom/google/tagmanager/Logger$LogLevel;

    invoke-virtual {v0}, Lcom/google/tagmanager/Logger$LogLevel;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/tagmanager/Logger$LogLevel;->ERROR:Lcom/google/tagmanager/Logger$LogLevel;

    invoke-virtual {v1}, Lcom/google/tagmanager/Logger$LogLevel;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    const-string v0, "GoogleTagManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/tagmanager/DefaultLogger;->mLogLevel:Lcom/google/tagmanager/Logger$LogLevel;

    invoke-virtual {v0}, Lcom/google/tagmanager/Logger$LogLevel;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/tagmanager/Logger$LogLevel;->ERROR:Lcom/google/tagmanager/Logger$LogLevel;

    invoke-virtual {v1}, Lcom/google/tagmanager/Logger$LogLevel;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    const-string v0, "GoogleTagManager"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public getLogLevel()Lcom/google/tagmanager/Logger$LogLevel;
    .locals 1

    iget-object v0, p0, Lcom/google/tagmanager/DefaultLogger;->mLogLevel:Lcom/google/tagmanager/Logger$LogLevel;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/tagmanager/DefaultLogger;->mLogLevel:Lcom/google/tagmanager/Logger$LogLevel;

    invoke-virtual {v0}, Lcom/google/tagmanager/Logger$LogLevel;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/tagmanager/Logger$LogLevel;->INFO:Lcom/google/tagmanager/Logger$LogLevel;

    invoke-virtual {v1}, Lcom/google/tagmanager/Logger$LogLevel;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    const-string v0, "GoogleTagManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/tagmanager/DefaultLogger;->mLogLevel:Lcom/google/tagmanager/Logger$LogLevel;

    invoke-virtual {v0}, Lcom/google/tagmanager/Logger$LogLevel;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/tagmanager/Logger$LogLevel;->INFO:Lcom/google/tagmanager/Logger$LogLevel;

    invoke-virtual {v1}, Lcom/google/tagmanager/Logger$LogLevel;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    const-string v0, "GoogleTagManager"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public setLogLevel(Lcom/google/tagmanager/Logger$LogLevel;)V
    .locals 0

    iput-object p1, p0, Lcom/google/tagmanager/DefaultLogger;->mLogLevel:Lcom/google/tagmanager/Logger$LogLevel;

    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/tagmanager/DefaultLogger;->mLogLevel:Lcom/google/tagmanager/Logger$LogLevel;

    invoke-virtual {v0}, Lcom/google/tagmanager/Logger$LogLevel;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/tagmanager/Logger$LogLevel;->VERBOSE:Lcom/google/tagmanager/Logger$LogLevel;

    invoke-virtual {v1}, Lcom/google/tagmanager/Logger$LogLevel;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    const-string v0, "GoogleTagManager"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/tagmanager/DefaultLogger;->mLogLevel:Lcom/google/tagmanager/Logger$LogLevel;

    invoke-virtual {v0}, Lcom/google/tagmanager/Logger$LogLevel;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/tagmanager/Logger$LogLevel;->VERBOSE:Lcom/google/tagmanager/Logger$LogLevel;

    invoke-virtual {v1}, Lcom/google/tagmanager/Logger$LogLevel;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    const-string v0, "GoogleTagManager"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/tagmanager/DefaultLogger;->mLogLevel:Lcom/google/tagmanager/Logger$LogLevel;

    invoke-virtual {v0}, Lcom/google/tagmanager/Logger$LogLevel;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/tagmanager/Logger$LogLevel;->WARNING:Lcom/google/tagmanager/Logger$LogLevel;

    invoke-virtual {v1}, Lcom/google/tagmanager/Logger$LogLevel;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    const-string v0, "GoogleTagManager"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/tagmanager/DefaultLogger;->mLogLevel:Lcom/google/tagmanager/Logger$LogLevel;

    invoke-virtual {v0}, Lcom/google/tagmanager/Logger$LogLevel;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/tagmanager/Logger$LogLevel;->WARNING:Lcom/google/tagmanager/Logger$LogLevel;

    invoke-virtual {v1}, Lcom/google/tagmanager/Logger$LogLevel;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    const-string v0, "GoogleTagManager"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
