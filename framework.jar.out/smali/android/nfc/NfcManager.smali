.class public final Landroid/nfc/NfcManager;
.super Ljava/lang/Object;
.source "NfcManager.java"


# static fields
.field static final TAG:Ljava/lang/String; = "NFC"


# instance fields
.field private mAdapter:Landroid/nfc/NfcAdapter;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 56
    if-eqz p1, :cond_0

    .line 61
    iput-object p1, p0, Landroid/nfc/NfcManager;->mContext:Landroid/content/Context;

    .line 64
    :try_start_0
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    goto :goto_0

    .line 65
    .end local v0    # "adapter":Landroid/nfc/NfcAdapter;
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    const/4 v0, 0x0

    .line 68
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    :goto_0
    iput-object v0, p0, Landroid/nfc/NfcManager;->mAdapter:Landroid/nfc/NfcAdapter;

    .line 69
    return-void

    .line 57
    .end local v0    # "adapter":Landroid/nfc/NfcAdapter;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context not associated with any application (using a mock context?)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getDefaultAdapter()Landroid/nfc/NfcAdapter;
    .locals 3

    .line 79
    :try_start_0
    iget-object v0, p0, Landroid/nfc/NfcManager;->mAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Landroid/nfc/NfcManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/nfc/NfcManager;->mAdapter:Landroid/nfc/NfcAdapter;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :cond_0
    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    const-string v1, "NFC"

    const-string v2, "Failed to recreate NfcAdapter."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .end local v0    # "e":Ljava/lang/UnsupportedOperationException;
    :goto_0
    iget-object v0, p0, Landroid/nfc/NfcManager;->mAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method
