.class Lcom/android/server/slice/SliceManagerService$SliceGrant;
.super Ljava/lang/Object;
.source "SliceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/slice/SliceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SliceGrant"
.end annotation


# instance fields
.field private final mPkg:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/slice/SliceManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/slice/SliceManagerService;Landroid/net/Uri;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/slice/SliceManagerService$SliceGrant;->this$0:Lcom/android/server/slice/SliceManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/slice/SliceManagerService$SliceGrant;->mUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/server/slice/SliceManagerService$SliceGrant;->mPkg:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/slice/SliceManagerService$SliceGrant;->mUserId:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/android/server/slice/SliceManagerService$SliceGrant;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/server/slice/SliceManagerService$SliceGrant;

    iget-object v2, v0, Lcom/android/server/slice/SliceManagerService$SliceGrant;->mUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/slice/SliceManagerService$SliceGrant;->mUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/server/slice/SliceManagerService$SliceGrant;->mPkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/slice/SliceManagerService$SliceGrant;->mPkg:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v0, Lcom/android/server/slice/SliceManagerService$SliceGrant;->mUserId:I

    iget v3, p0, Lcom/android/server/slice/SliceManagerService$SliceGrant;->mUserId:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService$SliceGrant;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/slice/SliceManagerService$SliceGrant;->mPkg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
