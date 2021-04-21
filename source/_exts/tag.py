from docutils import nodes
from sphinx.application import Sphinx
from docutils.parsers.rst.states import Inliner
from typing import List, Dict


def tag_role(role, rawtext, text, line_no, in_liner: Inliner, options: Dict = None, content: List = None):

    app = in_liner.document.settings.env.app
    site_url = app.builder.config.html_baseurl

    refurl = f"{site_url}/search.html?q={text.rstrip()}&check_keywords=yes&area=default"
    node = nodes.reference(rawtext, text.rstrip(), refuri=refurl, classes=['search-tag'])
    return [node], []


def setup(app: Sphinx):
    """
    :tag:`mytag`
    """
    app.add_role('tag', tag_role)
