.class public final Lcom/android/server/LocationManagerService$PendingRequest;
.super Ljava/lang/Object;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PendingRequest"
.end annotation


# instance fields
.field public mPackageNamae:Ljava/lang/String;

.field public mPendingIntent:Landroid/app/PendingIntent;

.field public mPid:I

.field public mRequest:Landroid/location/LocationRequest;

.field public mUid:I

.field public mlistener:Landroid/location/ILocationListener;


# direct methods
.method public constructor <init>(Landroid/location/LocationRequest;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/LocationManagerService$PendingRequest;->mUid:I

    iput v0, p0, Lcom/android/server/LocationManagerService$PendingRequest;->mPid:I

    iput-object p1, p0, Lcom/android/server/LocationManagerService$PendingRequest;->mRequest:Landroid/location/LocationRequest;

    iput-object p2, p0, Lcom/android/server/LocationManagerService$PendingRequest;->mlistener:Landroid/location/ILocationListener;

    iput-object p3, p0, Lcom/android/server/LocationManagerService$PendingRequest;->mPendingIntent:Landroid/app/PendingIntent;

    iput-object p4, p0, Lcom/android/server/LocationManagerService$PendingRequest;->mPackageNamae:Ljava/lang/String;

    iput p5, p0, Lcom/android/server/LocationManagerService$PendingRequest;->mUid:I

    iput p6, p0, Lcom/android/server/LocationManagerService$PendingRequest;->mPid:I

    return-void
.end method
