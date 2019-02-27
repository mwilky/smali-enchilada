.class public Landroid/renderscript/ScriptC;
.super Landroid/renderscript/Script;
.source "ScriptC.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScriptC"


# direct methods
.method protected constructor <init>(ILandroid/renderscript/RenderScript;)V
    .locals 2

    int-to-long v0, p1

    invoke-direct {p0, v0, v1, p2}, Landroid/renderscript/Script;-><init>(JLandroid/renderscript/RenderScript;)V

    return-void
.end method

.method protected constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/Script;-><init>(JLandroid/renderscript/RenderScript;)V

    return-void
.end method

.method protected constructor <init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V
    .locals 4

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, p1}, Landroid/renderscript/Script;-><init>(JLandroid/renderscript/RenderScript;)V

    invoke-static {p1, p2, p3}, Landroid/renderscript/ScriptC;->internalCreate(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2, v3}, Landroid/renderscript/ScriptC;->setID(J)V

    return-void

    :cond_0
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Loading of ScriptC script failed."

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor <init>(Landroid/renderscript/RenderScript;Ljava/lang/String;[B[B)V
    .locals 6

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, p1}, Landroid/renderscript/Script;-><init>(JLandroid/renderscript/RenderScript;)V

    const-wide/16 v2, 0x0

    sget v4, Landroid/renderscript/RenderScript;->sPointerSize:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    invoke-static {p1, p2, p3}, Landroid/renderscript/ScriptC;->internalStringCreate(Landroid/renderscript/RenderScript;Ljava/lang/String;[B)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p4}, Landroid/renderscript/ScriptC;->internalStringCreate(Landroid/renderscript/RenderScript;Ljava/lang/String;[B)J

    move-result-wide v2

    :goto_0
    cmp-long v0, v2, v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2, v3}, Landroid/renderscript/ScriptC;->setID(J)V

    return-void

    :cond_1
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Loading of ScriptC script failed."

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static declared-synchronized internalCreate(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)J
    .locals 8

    const-class v0, Landroid/renderscript/ScriptC;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v2, 0x400

    :try_start_1
    new-array v2, v2, [B

    const/4 v3, 0x0

    move-object v4, v2

    move v2, v3

    :goto_0
    array-length v5, v4

    sub-int/2addr v5, v2

    if-nez v5, :cond_0

    array-length v6, v4

    mul-int/lit8 v6, v6, 0x2

    new-array v6, v6, [B

    array-length v7, v4

    invoke-static {v4, v3, v6, v3, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    move-object v4, v6

    array-length v7, v4

    sub-int v5, v7, v2

    :cond_0
    invoke-virtual {v1, v4, v2, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gtz v6, :cond_1

    nop

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    nop

    move-object v3, v4

    nop

    nop

    :try_start_3
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/renderscript/RenderScript;->getCachePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v3, v2}, Landroid/renderscript/RenderScript;->nScriptCCreate(Ljava/lang/String;Ljava/lang/String;[BI)J

    move-result-wide v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v0

    return-wide v5

    :cond_1
    add-int/2addr v2, v6

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception v2

    :try_start_5
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v3}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized internalStringCreate(Landroid/renderscript/RenderScript;Ljava/lang/String;[B)J
    .locals 3

    const-class v0, Landroid/renderscript/ScriptC;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/renderscript/RenderScript;->getCachePath()Ljava/lang/String;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {p0, p1, v1, p2, v2}, Landroid/renderscript/RenderScript;->nScriptCCreate(Ljava/lang/String;Ljava/lang/String;[BI)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
