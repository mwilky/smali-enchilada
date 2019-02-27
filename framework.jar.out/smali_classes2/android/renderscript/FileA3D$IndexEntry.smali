.class public Landroid/renderscript/FileA3D$IndexEntry;
.super Ljava/lang/Object;
.source "FileA3D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/FileA3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IndexEntry"
.end annotation


# instance fields
.field mEntryType:Landroid/renderscript/FileA3D$EntryType;

.field mID:J

.field mIndex:I

.field mLoadedObj:Landroid/renderscript/BaseObj;

.field mName:Ljava/lang/String;

.field mRS:Landroid/renderscript/RenderScript;


# direct methods
.method constructor <init>(Landroid/renderscript/RenderScript;IJLjava/lang/String;Landroid/renderscript/FileA3D$EntryType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/renderscript/FileA3D$IndexEntry;->mRS:Landroid/renderscript/RenderScript;

    iput p2, p0, Landroid/renderscript/FileA3D$IndexEntry;->mIndex:I

    iput-wide p3, p0, Landroid/renderscript/FileA3D$IndexEntry;->mID:J

    iput-object p5, p0, Landroid/renderscript/FileA3D$IndexEntry;->mName:Ljava/lang/String;

    iput-object p6, p0, Landroid/renderscript/FileA3D$IndexEntry;->mEntryType:Landroid/renderscript/FileA3D$EntryType;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/renderscript/FileA3D$IndexEntry;->mLoadedObj:Landroid/renderscript/BaseObj;

    return-void
.end method

.method static declared-synchronized internalCreate(Landroid/renderscript/RenderScript;Landroid/renderscript/FileA3D$IndexEntry;)Landroid/renderscript/BaseObj;
    .locals 6

    const-class v0, Landroid/renderscript/FileA3D$IndexEntry;

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Landroid/renderscript/FileA3D$IndexEntry;->mLoadedObj:Landroid/renderscript/BaseObj;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/renderscript/FileA3D$IndexEntry;->mLoadedObj:Landroid/renderscript/BaseObj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    iget-object v1, p1, Landroid/renderscript/FileA3D$IndexEntry;->mEntryType:Landroid/renderscript/FileA3D$EntryType;

    sget-object v2, Landroid/renderscript/FileA3D$EntryType;->UNKNOWN:Landroid/renderscript/FileA3D$EntryType;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    monitor-exit v0

    return-object v3

    :cond_1
    :try_start_2
    iget-wide v1, p1, Landroid/renderscript/FileA3D$IndexEntry;->mID:J

    iget v4, p1, Landroid/renderscript/FileA3D$IndexEntry;->mIndex:I

    invoke-virtual {p0, v1, v2, v4}, Landroid/renderscript/RenderScript;->nFileA3DGetEntryByIndex(JI)J

    move-result-wide v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_2

    monitor-exit v0

    return-object v3

    :cond_2
    :try_start_3
    sget-object v3, Landroid/renderscript/FileA3D$1;->$SwitchMap$android$renderscript$FileA3D$EntryType:[I

    iget-object v4, p1, Landroid/renderscript/FileA3D$IndexEntry;->mEntryType:Landroid/renderscript/FileA3D$EntryType;

    invoke-virtual {v4}, Landroid/renderscript/FileA3D$EntryType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    new-instance v3, Landroid/renderscript/Mesh;

    invoke-direct {v3, v1, v2, p0}, Landroid/renderscript/Mesh;-><init>(JLandroid/renderscript/RenderScript;)V

    iput-object v3, p1, Landroid/renderscript/FileA3D$IndexEntry;->mLoadedObj:Landroid/renderscript/BaseObj;

    nop

    iget-object v3, p1, Landroid/renderscript/FileA3D$IndexEntry;->mLoadedObj:Landroid/renderscript/BaseObj;

    invoke-virtual {v3}, Landroid/renderscript/BaseObj;->updateFromNative()V

    iget-object v3, p1, Landroid/renderscript/FileA3D$IndexEntry;->mLoadedObj:Landroid/renderscript/BaseObj;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-object v3

    :cond_3
    :try_start_4
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Unrecognized object type in file."

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getEntryType()Landroid/renderscript/FileA3D$EntryType;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/FileA3D$IndexEntry;->mEntryType:Landroid/renderscript/FileA3D$EntryType;

    return-object v0
.end method

.method public getMesh()Landroid/renderscript/Mesh;
    .locals 1

    invoke-virtual {p0}, Landroid/renderscript/FileA3D$IndexEntry;->getObject()Landroid/renderscript/BaseObj;

    move-result-object v0

    check-cast v0, Landroid/renderscript/Mesh;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/FileA3D$IndexEntry;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getObject()Landroid/renderscript/BaseObj;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/FileA3D$IndexEntry;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    iget-object v0, p0, Landroid/renderscript/FileA3D$IndexEntry;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v0, p0}, Landroid/renderscript/FileA3D$IndexEntry;->internalCreate(Landroid/renderscript/RenderScript;Landroid/renderscript/FileA3D$IndexEntry;)Landroid/renderscript/BaseObj;

    move-result-object v0

    return-object v0
.end method
