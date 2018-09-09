.class Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;
.super Ljava/lang/Object;
.source "ActivityConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/secrecy/work/ActivityConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityItem"
.end annotation


# instance fields
.field private final mClassName:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/secrecy/work/ActivityConfig;


# direct methods
.method public constructor <init>(Lcom/android/server/secrecy/work/ActivityConfig;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;

    .line 162
    iput-object p1, p0, Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;->this$0:Lcom/android/server/secrecy/work/ActivityConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p2, p0, Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;->mPackageName:Ljava/lang/String;

    .line 165
    iput-object p3, p0, Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;->mClassName:Ljava/lang/String;

    .line 166
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;

    .line 157
    iget-object v0, p0, Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;

    .line 157
    iget-object v0, p0, Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;->mClassName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;->mPackageName:Ljava/lang/String;

    return-object v0
.end method
