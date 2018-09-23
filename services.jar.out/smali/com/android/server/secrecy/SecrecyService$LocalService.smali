.class final Lcom/android/server/secrecy/SecrecyService$LocalService;
.super Landroid/secrecy/SecrecyManagerInternal;
.source "SecrecyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/secrecy/SecrecyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/secrecy/SecrecyService;


# direct methods
.method private constructor <init>(Lcom/android/server/secrecy/SecrecyService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/secrecy/SecrecyService$LocalService;->this$0:Lcom/android/server/secrecy/SecrecyService;

    invoke-direct {p0}, Landroid/secrecy/SecrecyManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/secrecy/SecrecyService;Lcom/android/server/secrecy/SecrecyService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/secrecy/SecrecyService$LocalService;-><init>(Lcom/android/server/secrecy/SecrecyService;)V

    return-void
.end method


# virtual methods
.method public isInEncryptedAppList(Landroid/content/pm/ActivityInfo;Ljava/lang/String;II)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyService$LocalService;->this$0:Lcom/android/server/secrecy/SecrecyService;

    invoke-static {v0, p1}, Lcom/android/server/secrecy/SecrecyService;->access$200(Lcom/android/server/secrecy/SecrecyService;Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method
