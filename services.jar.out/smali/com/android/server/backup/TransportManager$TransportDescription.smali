.class Lcom/android/server/backup/TransportManager$TransportDescription;
.super Ljava/lang/Object;
.source "TransportManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/TransportManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransportDescription"
.end annotation


# instance fields
.field private configurationIntent:Landroid/content/Intent;

.field private currentDestinationString:Ljava/lang/String;

.field private dataManagementIntent:Landroid/content/Intent;

.field private dataManagementLabel:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private final transportDirName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->transportDirName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->configurationIntent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->currentDestinationString:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->dataManagementIntent:Landroid/content/Intent;

    iput-object p6, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->dataManagementLabel:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Lcom/android/server/backup/TransportManager$1;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/server/backup/TransportManager$TransportDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/backup/TransportManager$TransportDescription;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/backup/TransportManager$TransportDescription;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/backup/TransportManager$TransportDescription;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->transportDirName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/backup/TransportManager$TransportDescription;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->configurationIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/backup/TransportManager$TransportDescription;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    iput-object p1, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->configurationIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/backup/TransportManager$TransportDescription;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->currentDestinationString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/backup/TransportManager$TransportDescription;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->currentDestinationString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/backup/TransportManager$TransportDescription;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->dataManagementIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/backup/TransportManager$TransportDescription;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    iput-object p1, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->dataManagementIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/backup/TransportManager$TransportDescription;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->dataManagementLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/backup/TransportManager$TransportDescription;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->dataManagementLabel:Ljava/lang/String;

    return-object p1
.end method
