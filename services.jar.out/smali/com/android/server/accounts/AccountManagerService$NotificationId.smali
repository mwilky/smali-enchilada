.class Lcom/android/server/accounts/AccountManagerService$NotificationId;
.super Ljava/lang/Object;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotificationId"
.end annotation


# instance fields
.field private final mId:I

.field final mTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 6309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6310
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$NotificationId;->mTag:Ljava/lang/String;

    .line 6311
    iput p2, p0, Lcom/android/server/accounts/AccountManagerService$NotificationId;->mId:I

    .line 6312
    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/accounts/AccountManagerService$NotificationId;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService$NotificationId;

    .line 6305
    iget v0, p0, Lcom/android/server/accounts/AccountManagerService$NotificationId;->mId:I

    return v0
.end method
