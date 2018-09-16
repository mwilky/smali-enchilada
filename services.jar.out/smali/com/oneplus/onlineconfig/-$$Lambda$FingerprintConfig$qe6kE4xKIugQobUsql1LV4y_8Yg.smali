.class public final synthetic Lcom/oneplus/onlineconfig/-$$Lambda$FingerprintConfig$qe6kE4xKIugQobUsql1LV4y_8Yg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oneplus/onlineconfig/-$$Lambda$FingerprintConfig$qe6kE4xKIugQobUsql1LV4y_8Yg;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/oneplus/onlineconfig/-$$Lambda$FingerprintConfig$qe6kE4xKIugQobUsql1LV4y_8Yg;->f$0:I

    check-cast p1, Lcom/oneplus/onlineconfig/FingerprintConfig$ConfigChangeCallback;

    invoke-static {v0, p1}, Lcom/oneplus/onlineconfig/FingerprintConfig;->lambda$handleFarFrrChange$0(ILcom/oneplus/onlineconfig/FingerprintConfig$ConfigChangeCallback;)V

    return-void
.end method
