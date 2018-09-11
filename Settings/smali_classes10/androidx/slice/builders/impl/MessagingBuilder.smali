.class public interface abstract Landroidx/slice/builders/impl/MessagingBuilder;
.super Ljava/lang/Object;
.source "MessagingBuilder.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/builders/impl/MessagingBuilder$MessageBuilder;
    }
.end annotation


# virtual methods
.method public abstract add(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
.end method

.method public abstract createMessageBuilder()Landroidx/slice/builders/impl/TemplateBuilderImpl;
.end method
