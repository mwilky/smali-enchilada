.class Landroid/gesture/GestureLibraries$FileGestureLibrary;
.super Landroid/gesture/GestureLibrary;
.source "GestureLibraries.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gesture/GestureLibraries;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileGestureLibrary"
.end annotation


# instance fields
.field private final mPath:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Landroid/gesture/GestureLibrary;-><init>()V

    iput-object p1, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mPath:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public isReadOnly()Z
    .locals 1

    iget-object v0, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public load()Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mPath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mStore:Landroid/gesture/GestureStore;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/gesture/GestureStore;->load(Ljava/io/InputStream;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "Gestures"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not load the gesture library from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mPath:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "Gestures"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not load the gesture library from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mPath:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    :goto_1
    return v0
.end method

.method public save()Z
    .locals 7

    iget-object v0, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mStore:Landroid/gesture/GestureStore;

    invoke-virtual {v0}, Landroid/gesture/GestureStore;->hasChanged()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_1

    return v4

    :cond_1
    move v3, v4

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    iget-object v4, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mStore:Landroid/gesture/GestureStore;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4, v5, v1}, Landroid/gesture/GestureStore;->save(Ljava/io/OutputStream;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v4, "Gestures"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not save the gesture library in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mPath:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v4, "Gestures"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not save the gesture library in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mPath:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :goto_1
    return v3
.end method
