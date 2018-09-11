.class public final synthetic Lcom/oneplus/settings/packageuninstaller/-$$Lambda$EventResultPersister$zHzPUvQ151m1efiCPydr8fc75IA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/oneplus/settings/packageuninstaller/EventResultPersister;


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/settings/packageuninstaller/EventResultPersister;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/settings/packageuninstaller/-$$Lambda$EventResultPersister$zHzPUvQ151m1efiCPydr8fc75IA;->f$0:Lcom/oneplus/settings/packageuninstaller/EventResultPersister;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/packageuninstaller/-$$Lambda$EventResultPersister$zHzPUvQ151m1efiCPydr8fc75IA;->f$0:Lcom/oneplus/settings/packageuninstaller/EventResultPersister;

    invoke-static {v0}, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->lambda$writeState$0(Lcom/oneplus/settings/packageuninstaller/EventResultPersister;)V

    return-void
.end method
