.class final Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;
.super Landroid/os/AsyncTask;
.source "PrintFileDocumentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintFileDocumentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WriteFileAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCancellationSignal:Landroid/os/CancellationSignal;

.field private final mDestination:Landroid/os/ParcelFileDescriptor;

.field private final mResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

.field final synthetic this$0:Landroid/print/PrintFileDocumentAdapter;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/print/PrintFileDocumentAdapter;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .locals 2

    iput-object p1, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->this$0:Landroid/print/PrintFileDocumentAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->mDestination:Landroid/os/ParcelFileDescriptor;

    iput-object p4, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->mResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    iput-object p3, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->mCancellationSignal:Landroid/os/CancellationSignal;

    iget-object v0, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->mCancellationSignal:Landroid/os/CancellationSignal;

    new-instance v1, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask$1;

    invoke-direct {v1, p0, p1}, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask$1;-><init>(Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;Landroid/print/PrintFileDocumentAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->this$0:Landroid/print/PrintFileDocumentAdapter;

    invoke-static {v2}, Landroid/print/PrintFileDocumentAdapter;->access$000(Landroid/print/PrintFileDocumentAdapter;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Landroid/os/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->mDestination:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    nop

    :try_start_2
    iget-object v3, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-static {v1, v2, v0, v3}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;Landroid/os/FileUtils$ProgressListener;Landroid/os/CancellationSignal;)J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v0, v2}, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-static {v0, v1}, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catch Landroid/os/OperationCanceledException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catchall_0
    move-exception v3

    move-object v4, v0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v4

    move-object v5, v4

    move-object v4, v3

    move-object v3, v5

    :goto_0
    :try_start_6
    invoke-static {v4, v2}, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v2

    move-object v3, v0

    goto :goto_1

    :catch_1
    move-exception v2

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v3

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    :goto_1
    :try_start_8
    invoke-static {v3, v1}, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_8
    .catch Landroid/os/OperationCanceledException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    move-exception v1

    const-string v2, "PrintedFileDocAdapter"

    const-string v3, "Error writing data!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->mResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    iget-object v3, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->this$0:Landroid/print/PrintFileDocumentAdapter;

    invoke-static {v3}, Landroid/print/PrintFileDocumentAdapter;->access$100(Landroid/print/PrintFileDocumentAdapter;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x1040723

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;)V

    goto :goto_3

    :catch_3
    move-exception v1

    :goto_2
    nop

    :goto_3
    return-object v0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->onCancelled(Ljava/lang/Void;)V

    return-void
.end method

.method protected onCancelled(Ljava/lang/Void;)V
    .locals 3

    iget-object v0, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->mResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    iget-object v1, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->this$0:Landroid/print/PrintFileDocumentAdapter;

    invoke-static {v1}, Landroid/print/PrintFileDocumentAdapter;->access$100(Landroid/print/PrintFileDocumentAdapter;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040722

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4

    iget-object v0, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->mResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/print/PageRange;

    sget-object v2, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFinished([Landroid/print/PageRange;)V

    return-void
.end method
