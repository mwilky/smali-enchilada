.class public final synthetic Landroid/telephony/euicc/-$$Lambda$EuiccCardManager$10$tNYkM-c2PgDDurtC-iDXbvWa5_8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/telephony/euicc/EuiccCardManager$ResultCallback;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/euicc/EuiccCardManager$ResultCallback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/euicc/-$$Lambda$EuiccCardManager$10$tNYkM-c2PgDDurtC-iDXbvWa5_8;->f$0:Landroid/telephony/euicc/EuiccCardManager$ResultCallback;

    iput p2, p0, Landroid/telephony/euicc/-$$Lambda$EuiccCardManager$10$tNYkM-c2PgDDurtC-iDXbvWa5_8;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/telephony/euicc/-$$Lambda$EuiccCardManager$10$tNYkM-c2PgDDurtC-iDXbvWa5_8;->f$0:Landroid/telephony/euicc/EuiccCardManager$ResultCallback;

    iget v1, p0, Landroid/telephony/euicc/-$$Lambda$EuiccCardManager$10$tNYkM-c2PgDDurtC-iDXbvWa5_8;->f$1:I

    invoke-static {v0, v1}, Landroid/telephony/euicc/EuiccCardManager$10;->lambda$onComplete$0(Landroid/telephony/euicc/EuiccCardManager$ResultCallback;I)V

    return-void
.end method
