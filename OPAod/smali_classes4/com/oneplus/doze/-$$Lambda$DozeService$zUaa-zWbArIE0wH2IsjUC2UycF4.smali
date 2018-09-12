.class public final synthetic Lcom/oneplus/doze/-$$Lambda$DozeService$zUaa-zWbArIE0wH2IsjUC2UycF4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/oneplus/doze/DozeService;


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/doze/DozeService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/doze/-$$Lambda$DozeService$zUaa-zWbArIE0wH2IsjUC2UycF4;->f$0:Lcom/oneplus/doze/DozeService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/doze/-$$Lambda$DozeService$zUaa-zWbArIE0wH2IsjUC2UycF4;->f$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->lambda$onDreamingStarted$0(Lcom/oneplus/doze/DozeService;)V

    return-void
.end method
