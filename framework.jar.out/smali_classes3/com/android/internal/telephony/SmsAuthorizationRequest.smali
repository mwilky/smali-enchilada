.class public Lcom/android/internal/telephony/SmsAuthorizationRequest;
.super Ljava/lang/Object;
.source "SmsAuthorizationRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/telephony/SmsAuthorizationRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final destinationAddress:Ljava/lang/String;

.field public final message:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field private final service:Lcom/android/internal/telephony/ISmsSecurityService;

.field private final token:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/SmsAuthorizationRequest$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsAuthorizationRequest$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SmsAuthorizationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISmsSecurityService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISmsSecurityService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SmsAuthorizationRequest;->service:Lcom/android/internal/telephony/ISmsSecurityService;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SmsAuthorizationRequest;->token:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SmsAuthorizationRequest;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SmsAuthorizationRequest;->destinationAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SmsAuthorizationRequest;->message:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/ISmsSecurityService;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/SmsAuthorizationRequest;->service:Lcom/android/internal/telephony/ISmsSecurityService;

    iput-object p2, p0, Lcom/android/internal/telephony/SmsAuthorizationRequest;->token:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/internal/telephony/SmsAuthorizationRequest;->packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/telephony/SmsAuthorizationRequest;->destinationAddress:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/internal/telephony/SmsAuthorizationRequest;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public accept()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/SmsAuthorizationRequest;->service:Lcom/android/internal/telephony/ISmsSecurityService;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/internal/telephony/ISmsSecurityService;->sendResponse(Lcom/android/internal/telephony/SmsAuthorizationRequest;Z)Z

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getToken()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/SmsAuthorizationRequest;->token:Landroid/os/IBinder;

    return-object v0
.end method

.method public reject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/SmsAuthorizationRequest;->service:Lcom/android/internal/telephony/ISmsSecurityService;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/internal/telephony/ISmsSecurityService;->sendResponse(Lcom/android/internal/telephony/SmsAuthorizationRequest;Z)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "[%s] (%s) # %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/telephony/SmsAuthorizationRequest;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/internal/telephony/SmsAuthorizationRequest;->destinationAddress:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/internal/telephony/SmsAuthorizationRequest;->message:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/SmsAuthorizationRequest;->service:Lcom/android/internal/telephony/ISmsSecurityService;

    invoke-interface {v0}, Lcom/android/internal/telephony/ISmsSecurityService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/android/internal/telephony/SmsAuthorizationRequest;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/android/internal/telephony/SmsAuthorizationRequest;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/SmsAuthorizationRequest;->destinationAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/SmsAuthorizationRequest;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
