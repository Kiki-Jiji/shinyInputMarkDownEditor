import React from "react";
import SimpleMDE from "react-simplemde-editor";
import "easymde/dist/easymde.min.css";

import { reactShinyInput } from 'reactR';

const MarkdownEditorInput = ({ configuration, value, setValue }) => {
  return <SimpleMDE value = {value} onChange={value => setValue(value)} />;
}

reactShinyInput('.shinyMarkdownEditor', 'shinyMarkdownEditor', MarkdownEditorInput)