.class public interface abstract Landroid/telephony/mbms/IDownloadProgressListener;
.super Ljava/lang/Object;
.source "IDownloadProgressListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/mbms/IDownloadProgressListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onProgressUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;IIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
