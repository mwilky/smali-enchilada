.class final Landroid/net/metrics/DhcpErrorEvent$Decoder;
.super Ljava/lang/Object;
.source "DhcpErrorEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/metrics/DhcpErrorEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Decoder"
.end annotation


# static fields
.field static final constants:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/net/metrics/DhcpErrorEvent;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v3, "L2_"

    const-string v4, "L3_"

    const-string v5, "L4_"

    const-string v6, "BOOTP_"

    const-string v7, "DHCP_"

    const-string v8, "BUFFER_"

    const-string v9, "RECEIVE_"

    const-string v10, "PARSING_"

    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;[Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Landroid/net/metrics/DhcpErrorEvent$Decoder;->constants:Landroid/util/SparseArray;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
