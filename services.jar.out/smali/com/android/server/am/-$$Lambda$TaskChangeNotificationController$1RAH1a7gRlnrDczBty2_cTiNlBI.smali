.class public final synthetic Lcom/android/server/am/-$$Lambda$TaskChangeNotificationController$1RAH1a7gRlnrDczBty2_cTiNlBI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/am/-$$Lambda$TaskChangeNotificationController$1RAH1a7gRlnrDczBty2_cTiNlBI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/am/-$$Lambda$TaskChangeNotificationController$1RAH1a7gRlnrDczBty2_cTiNlBI;

    invoke-direct {v0}, Lcom/android/server/am/-$$Lambda$TaskChangeNotificationController$1RAH1a7gRlnrDczBty2_cTiNlBI;-><init>()V

    sput-object v0, Lcom/android/server/am/-$$Lambda$TaskChangeNotificationController$1RAH1a7gRlnrDczBty2_cTiNlBI;->INSTANCE:Lcom/android/server/am/-$$Lambda$TaskChangeNotificationController$1RAH1a7gRlnrDczBty2_cTiNlBI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/am/TaskChangeNotificationController;->lambda$new$16(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method
