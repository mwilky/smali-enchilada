.class Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;
.super Ljava/lang/Object;
.source "Convert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/broadcastradio/hal2/Convert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MetadataDef"
.end annotation


# instance fields
.field private key:Ljava/lang/String;

.field private type:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;


# direct methods
.method private constructor <init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;->type:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;->key:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;Lcom/android/server/broadcastradio/hal2/Convert$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;)Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;
    .locals 1

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;->type:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;->key:Ljava/lang/String;

    return-object v0
.end method
