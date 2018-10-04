.class public final Landroid/media/MediaCas$Session;
.super Ljava/lang/Object;
.source "MediaCas.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Session"
.end annotation


# instance fields
.field final mSessionId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/media/MediaCas;


# direct methods
.method constructor <init>(Landroid/media/MediaCas;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/media/MediaCas$Session;->mSessionId:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->access$300(Landroid/media/MediaCas;)V

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->access$500(Landroid/media/MediaCas;)Landroid/hardware/cas/V1_0/ICas;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCas$Session;->mSessionId:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Landroid/hardware/cas/V1_0/ICas;->closeSession(Ljava/util/ArrayList;)I

    move-result v0

    invoke-static {v0}, Landroid/media/MediaCasStateException;->throwExceptionIfNeeded(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v1}, Landroid/media/MediaCas;->access$600(Landroid/media/MediaCas;)V

    :goto_0
    return-void
.end method

.method public processEcm([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/media/MediaCas$Session;->processEcm([BII)V

    return-void
.end method

.method public processEcm([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->access$300(Landroid/media/MediaCas;)V

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->access$500(Landroid/media/MediaCas;)Landroid/hardware/cas/V1_0/ICas;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCas$Session;->mSessionId:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v2, p1, p2, p3}, Landroid/media/MediaCas;->access$400(Landroid/media/MediaCas;[BII)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/hardware/cas/V1_0/ICas;->processEcm(Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v0

    invoke-static {v0}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v1}, Landroid/media/MediaCas;->access$600(Landroid/media/MediaCas;)V

    :goto_0
    return-void
.end method

.method public setPrivateData([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->access$300(Landroid/media/MediaCas;)V

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->access$500(Landroid/media/MediaCas;)Landroid/hardware/cas/V1_0/ICas;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCas$Session;->mSessionId:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    const/4 v3, 0x0

    array-length v4, p1

    invoke-static {v2, p1, v3, v4}, Landroid/media/MediaCas;->access$400(Landroid/media/MediaCas;[BII)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/hardware/cas/V1_0/ICas;->setSessionPrivateData(Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v0

    invoke-static {v0}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v1}, Landroid/media/MediaCas;->access$600(Landroid/media/MediaCas;)V

    :goto_0
    return-void
.end method
